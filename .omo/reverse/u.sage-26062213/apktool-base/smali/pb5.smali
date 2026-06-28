.class public final Lpb5;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ls55;


# static fields
.field public static volatile K:Lpb5;


# instance fields
.field public A:J

.field public final B:Ljava/util/HashMap;

.field public final C:Ljava/util/HashMap;

.field public final D:Ljava/util/HashMap;

.field public final E:Ljava/util/HashMap;

.field public F:Lw75;

.field public G:Ljava/lang/String;

.field public H:Lea5;

.field public I:J

.field public final J:Llb5;

.field public final a:Lw35;

.field public final b:Li25;

.field public c:Lat4;

.field public d:Lq25;

.field public e:Lqa5;

.field public f:Lgn4;

.field public final g:Lub5;

.field public h:Li25;

.field public i:Lr95;

.field public final j:Leb5;

.field public k:Lk35;

.field public final l:Lr45;

.field public final m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public n:Z

.field public o:J

.field public p:Ljava/util/ArrayList;

.field public final q:Ljava/util/LinkedList;

.field public r:I

.field public s:I

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Ljava/nio/channels/FileLock;

.field public x:Ljava/nio/channels/FileChannel;

.field public y:Ljava/util/ArrayList;

.field public z:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lrb5;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lpb5;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    new-instance v0, Ljava/util/LinkedList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lpb5;->q:Ljava/util/LinkedList;

    .line 18
    .line 19
    new-instance v0, Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lpb5;->E:Ljava/util/HashMap;

    .line 25
    .line 26
    new-instance v0, Llb5;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Llb5;-><init>(Lpb5;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lpb5;->J:Llb5;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    iget-object v0, p1, Lrb5;->a:Landroid/content/Context;

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-static {v0, v2, v2, v2}, Lr45;->r(Landroid/content/Context;Lix4;Ljava/lang/Long;Ljava/lang/Long;)Lr45;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lpb5;->l:Lr45;

    .line 44
    .line 45
    const-wide/16 v2, -0x1

    .line 46
    .line 47
    iput-wide v2, p0, Lpb5;->A:J

    .line 48
    .line 49
    new-instance v0, Leb5;

    .line 50
    .line 51
    invoke-direct {v0, p0}, Lta5;-><init>(Lpb5;)V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lpb5;->j:Leb5;

    .line 55
    .line 56
    new-instance v0, Lub5;

    .line 57
    .line 58
    invoke-direct {v0, p0}, Lab5;-><init>(Lpb5;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lab5;->x()V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lpb5;->g:Lub5;

    .line 65
    .line 66
    new-instance v0, Li25;

    .line 67
    .line 68
    invoke-direct {v0, p0, v1}, Li25;-><init>(Lpb5;I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Lab5;->x()V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, Lpb5;->b:Li25;

    .line 75
    .line 76
    new-instance v0, Lw35;

    .line 77
    .line 78
    invoke-direct {v0, p0}, Lw35;-><init>(Lpb5;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Lab5;->x()V

    .line 82
    .line 83
    .line 84
    iput-object v0, p0, Lpb5;->a:Lw35;

    .line 85
    .line 86
    new-instance v0, Ljava/util/HashMap;

    .line 87
    .line 88
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 89
    .line 90
    .line 91
    iput-object v0, p0, Lpb5;->B:Ljava/util/HashMap;

    .line 92
    .line 93
    new-instance v0, Ljava/util/HashMap;

    .line 94
    .line 95
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 96
    .line 97
    .line 98
    iput-object v0, p0, Lpb5;->C:Ljava/util/HashMap;

    .line 99
    .line 100
    new-instance v0, Ljava/util/HashMap;

    .line 101
    .line 102
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 103
    .line 104
    .line 105
    iput-object v0, p0, Lpb5;->D:Ljava/util/HashMap;

    .line 106
    .line 107
    invoke-virtual {p0}, Lpb5;->d()Lj45;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    new-instance v1, Lo9;

    .line 112
    .line 113
    invoke-direct {v1, p0, p1}, Lo9;-><init>(Lpb5;Lrb5;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v1}, Lj45;->E(Ljava/lang/Runnable;)V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method public static C(Landroid/content/Context;)Lpb5;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    sget-object v0, Lpb5;->K:Lpb5;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    const-class v0, Lpb5;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    sget-object v1, Lpb5;->K:Lpb5;

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    new-instance v1, Lrb5;

    .line 23
    .line 24
    invoke-direct {v1, p0}, Lrb5;-><init>(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lrb5;

    .line 32
    .line 33
    new-instance v1, Lpb5;

    .line 34
    .line 35
    invoke-direct {v1, p0}, Lpb5;-><init>(Lrb5;)V

    .line 36
    .line 37
    .line 38
    sput-object v1, Lpb5;->K:Lpb5;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    :goto_0
    monitor-exit v0

    .line 44
    goto :goto_2

    .line 45
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p0

    .line 47
    :cond_1
    :goto_2
    sget-object p0, Lpb5;->K:Lpb5;

    .line 48
    .line 49
    return-object p0
.end method

.method public static final D(Ls35;ILjava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ls35;->g()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const-string v3, "_err"

    .line 11
    .line 12
    if-ge v1, v2, :cond_1

    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lc45;

    .line 19
    .line 20
    invoke-virtual {v2}, Lc45;->u()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-static {}, Lc45;->F()La45;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0, v3}, La45;->g(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    int-to-long v1, p1

    .line 42
    invoke-virtual {v0, v1, v2}, La45;->i(J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lpn4;->d()Lrn4;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Lc45;

    .line 50
    .line 51
    invoke-static {}, Lc45;->F()La45;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-string v1, "_ev"

    .line 56
    .line 57
    invoke-virtual {v0, v1}, La45;->g(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p2}, La45;->h(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lpn4;->d()Lrn4;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    check-cast p2, Lc45;

    .line 68
    .line 69
    invoke-virtual {p0, p1}, Ls35;->j(Lc45;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, p2}, Ls35;->j(Lc45;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public static final E(Ls35;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ls35;->g()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-ge v1, v2, :cond_1

    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lc45;

    .line 17
    .line 18
    invoke-virtual {v2}, Lc45;->u()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Ls35;->l(I)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-void
.end method

.method public static final S(Lvc5;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lvc5;->o:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public static final T(Lab5;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    iget-boolean v0, p0, Lab5;->c:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string v0, "Component not initialized: "

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    const-string p0, "Upload Component not created"

    .line 27
    .line 28
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public static final U(Lvc5;)Ljava/lang/Boolean;
    .locals 2

    .line 1
    iget-object v0, p0, Lvc5;->C:Ljava/lang/Boolean;

    .line 2
    .line 3
    iget-object p0, p0, Lvc5;->P:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_3

    .line 10
    .line 11
    invoke-static {p0}, Lra3;->p(Ljava/lang/String;)Lra3;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    iget-object p0, p0, Lra3;->o:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p0, Lu55;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_2

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    if-eq p0, v1, :cond_2

    .line 27
    .line 28
    const/4 v1, 0x2

    .line 29
    if-eq p0, v1, :cond_1

    .line 30
    .line 31
    const/4 v1, 0x3

    .line 32
    if-eq p0, v1, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_1
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_2
    const/4 p0, 0x0

    .line 42
    return-object p0

    .line 43
    :cond_3
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final A(Lm25;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lpb5;->d()Lj45;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lj45;->v()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lm25;->H()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Lm25;->E()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    move-object v1, p1

    .line 27
    check-cast v1, Ljava/lang/String;

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    const/16 v2, 0xcc

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    move-object v0, p0

    .line 35
    invoke-virtual/range {v0 .. v5}, Lpb5;->B(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    move-object v0, p0

    .line 40
    invoke-virtual {p1}, Lm25;->E()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    check-cast p0, Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0}, Lpb5;->c()La25;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iget-object v1, v1, La25;->n:Lx15;

    .line 55
    .line 56
    const-string v2, "Fetching remote configuration"

    .line 57
    .line 58
    invoke-virtual {v1, p0, v2}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v1, v0, Lpb5;->a:Lw35;

    .line 62
    .line 63
    invoke-static {v1}, Lpb5;->T(Lab5;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, p0}, Lw35;->H(Ljava/lang/String;)Ln15;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-static {v1}, Lpb5;->T(Lab5;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Lib0;->v()V

    .line 74
    .line 75
    .line 76
    iget-object v3, v1, Lw35;->n:Ldi;

    .line 77
    .line 78
    invoke-virtual {v3, p0}, Lwm3;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    check-cast v3, Ljava/lang/String;

    .line 83
    .line 84
    const/4 v4, 0x0

    .line 85
    if-eqz v2, :cond_4

    .line 86
    .line 87
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    const/4 v5, 0x0

    .line 92
    if-nez v2, :cond_1

    .line 93
    .line 94
    new-instance v2, Ldi;

    .line 95
    .line 96
    invoke-direct {v2, v5}, Lwm3;-><init>(I)V

    .line 97
    .line 98
    .line 99
    const-string v6, "If-Modified-Since"

    .line 100
    .line 101
    invoke-virtual {v2, v6, v3}, Lwm3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_1
    move-object v2, v4

    .line 106
    :goto_0
    invoke-static {v1}, Lpb5;->T(Lab5;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Lib0;->v()V

    .line 110
    .line 111
    .line 112
    iget-object v1, v1, Lw35;->o:Ldi;

    .line 113
    .line 114
    invoke-virtual {v1, p0}, Lwm3;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    check-cast p0, Ljava/lang/String;

    .line 119
    .line 120
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-nez v1, :cond_3

    .line 125
    .line 126
    if-nez v2, :cond_2

    .line 127
    .line 128
    new-instance v1, Ldi;

    .line 129
    .line 130
    invoke-direct {v1, v5}, Lwm3;-><init>(I)V

    .line 131
    .line 132
    .line 133
    move-object v2, v1

    .line 134
    :cond_2
    const-string v1, "If-None-Match"

    .line 135
    .line 136
    invoke-virtual {v2, v1, p0}, Lwm3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    :cond_3
    move-object v10, v2

    .line 140
    goto :goto_1

    .line 141
    :cond_4
    move-object v10, v4

    .line 142
    :goto_1
    const/4 p0, 0x1

    .line 143
    iput-boolean p0, v0, Lpb5;->t:Z

    .line 144
    .line 145
    iget-object v6, v0, Lpb5;->b:Li25;

    .line 146
    .line 147
    invoke-static {v6}, Lpb5;->T(Lab5;)V

    .line 148
    .line 149
    .line 150
    new-instance v11, Llb5;

    .line 151
    .line 152
    invoke-direct {v11, v0}, Llb5;-><init>(Lpb5;)V

    .line 153
    .line 154
    .line 155
    iget-object p0, v6, Lib0;->a:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast p0, Lr45;

    .line 158
    .line 159
    invoke-virtual {v6}, Lib0;->v()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v6}, Lab5;->w()V

    .line 163
    .line 164
    .line 165
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    invoke-static {v11}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    iget-object v0, v6, Lta5;->b:Lpb5;

    .line 172
    .line 173
    iget-object v0, v0, Lpb5;->j:Leb5;

    .line 174
    .line 175
    new-instance v1, Landroid/net/Uri$Builder;

    .line 176
    .line 177
    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1}, Lm25;->H()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    sget-object v3, Le05;->f:Ld05;

    .line 185
    .line 186
    invoke-virtual {v3, v4}, Ld05;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    check-cast v3, Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    sget-object v5, Le05;->g:Ld05;

    .line 197
    .line 198
    invoke-virtual {v5, v4}, Ld05;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    check-cast v4, Ljava/lang/String;

    .line 203
    .line 204
    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    const-string v4, "config/app/"

    .line 213
    .line 214
    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    invoke-virtual {v3, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    const-string v3, "platform"

    .line 223
    .line 224
    const-string v4, "android"

    .line 225
    .line 226
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    iget-object v0, v0, Lib0;->a:Ljava/lang/Object;

    .line 231
    .line 232
    check-cast v0, Lr45;

    .line 233
    .line 234
    iget-object v0, v0, Lr45;->d:Lds4;

    .line 235
    .line 236
    invoke-virtual {v0}, Lds4;->B()V

    .line 237
    .line 238
    .line 239
    const-wide/32 v3, 0x274e8

    .line 240
    .line 241
    .line 242
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    const-string v3, "gmp_version"

    .line 247
    .line 248
    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    const-string v2, "runtime_version"

    .line 253
    .line 254
    const-string v3, "0"

    .line 255
    .line 256
    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    :try_start_0
    new-instance v1, Ljava/net/URI;

    .line 268
    .line 269
    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    .line 273
    .line 274
    .line 275
    move-result-object v8

    .line 276
    iget-object v1, p0, Lr45;->g:Lj45;

    .line 277
    .line 278
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 279
    .line 280
    .line 281
    new-instance v5, Lg25;

    .line 282
    .line 283
    invoke-virtual {p1}, Lm25;->E()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v7

    .line 287
    const/4 v9, 0x0

    .line 288
    invoke-direct/range {v5 .. v11}, Lg25;-><init>(Li25;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Ld25;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v1, v5}, Lj45;->H(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    .line 293
    .line 294
    return-void

    .line 295
    :catch_0
    iget-object p0, p0, Lr45;->f:La25;

    .line 296
    .line 297
    invoke-static {p0}, Lr45;->l(Lq55;)V

    .line 298
    .line 299
    .line 300
    iget-object p0, p0, La25;->f:Lx15;

    .line 301
    .line 302
    invoke-virtual {p1}, Lm25;->E()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    invoke-static {p1}, La25;->D(Ljava/lang/String;)Ly15;

    .line 307
    .line 308
    .line 309
    move-result-object p1

    .line 310
    const-string v1, "Failed to parse config URL. Not fetching. appId"

    .line 311
    .line 312
    invoke-virtual {p0, p1, v0, v1}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    return-void
.end method

.method public final B(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lpb5;->b:Li25;

    .line 2
    .line 3
    invoke-virtual {p0}, Lpb5;->d()Lj45;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lj45;->v()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lpb5;->l0()V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-nez p4, :cond_0

    .line 18
    .line 19
    :try_start_0
    new-array p4, v1, [B

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto/16 :goto_9

    .line 24
    .line 25
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lpb5;->c()La25;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-object v2, v2, La25;->n:Lx15;

    .line 30
    .line 31
    const-string v3, "onConfigFetched. Response size"

    .line 32
    .line 33
    array-length v4, p4

    .line 34
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v2, v4, v3}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lpb5;->e0()Lds4;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    sget-object v3, Le05;->e1:Ld05;

    .line 46
    .line 47
    const/4 v5, 0x0

    .line 48
    invoke-virtual {v2, v5, v3}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    iget-object v2, p0, Lpb5;->g:Lub5;

    .line 55
    .line 56
    invoke-static {v2}, Lpb5;->T(Lab5;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, p5}, Lub5;->B(Ljava/util/Map;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    iget-object v2, p0, Lpb5;->c:Lat4;

    .line 63
    .line 64
    invoke-static {v2}, Lpb5;->T(Lab5;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Lat4;->j0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .line 69
    .line 70
    :try_start_1
    iget-object v2, p0, Lpb5;->c:Lat4;

    .line 71
    .line 72
    invoke-static {v2}, Lpb5;->T(Lab5;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, p1}, Lat4;->z0(Ljava/lang/String;)Lm25;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    const/16 v3, 0xc8

    .line 80
    .line 81
    const/16 v6, 0x130

    .line 82
    .line 83
    if-eq p2, v3, :cond_3

    .line 84
    .line 85
    const/16 v3, 0xcc

    .line 86
    .line 87
    if-eq p2, v3, :cond_3

    .line 88
    .line 89
    if-ne p2, v6, :cond_2

    .line 90
    .line 91
    move p2, v6

    .line 92
    goto :goto_1

    .line 93
    :cond_2
    move v3, v1

    .line 94
    goto :goto_2

    .line 95
    :cond_3
    :goto_1
    if-nez p3, :cond_2

    .line 96
    .line 97
    const/4 v3, 0x1

    .line 98
    :goto_2
    if-nez v2, :cond_4

    .line 99
    .line 100
    invoke-virtual {p0}, Lpb5;->c()La25;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    iget-object p2, p2, La25;->i:Lx15;

    .line 105
    .line 106
    const-string p3, "App does not exist in onConfigFetched. appId"

    .line 107
    .line 108
    invoke-static {p1}, La25;->D(Ljava/lang/String;)Ly15;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p2, p1, p3}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 113
    .line 114
    .line 115
    goto/16 :goto_7

    .line 116
    .line 117
    :catchall_1
    move-exception p1

    .line 118
    goto/16 :goto_8

    .line 119
    .line 120
    :cond_4
    const/16 v7, 0x194

    .line 121
    .line 122
    iget-object v8, p0, Lpb5;->a:Lw35;

    .line 123
    .line 124
    if-nez v3, :cond_8

    .line 125
    .line 126
    if-ne p2, v7, :cond_5

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_5
    :try_start_2
    invoke-virtual {p0}, Lpb5;->f()Lcom/google/android/gms/common/util/Clock;

    .line 130
    .line 131
    .line 132
    move-result-object p4

    .line 133
    invoke-interface {p4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 134
    .line 135
    .line 136
    move-result-wide p4

    .line 137
    invoke-virtual {v2, p4, p5}, Lm25;->g(J)V

    .line 138
    .line 139
    .line 140
    iget-object p4, p0, Lpb5;->c:Lat4;

    .line 141
    .line 142
    invoke-static {p4}, Lpb5;->T(Lab5;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p4, v2, v1}, Lat4;->A0(Lm25;Z)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Lpb5;->c()La25;

    .line 149
    .line 150
    .line 151
    move-result-object p4

    .line 152
    iget-object p4, p4, La25;->n:Lx15;

    .line 153
    .line 154
    const-string p5, "Fetching config failed. code, error"

    .line 155
    .line 156
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {p4, v0, p3, p5}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-static {v8}, Lpb5;->T(Lab5;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v8}, Lib0;->v()V

    .line 167
    .line 168
    .line 169
    iget-object p3, v8, Lw35;->n:Ldi;

    .line 170
    .line 171
    invoke-virtual {p3, p1, v5}, Lwm3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    iget-object p1, p0, Lpb5;->i:Lr95;

    .line 175
    .line 176
    iget-object p1, p1, Lr95;->i:Ly25;

    .line 177
    .line 178
    invoke-virtual {p0}, Lpb5;->f()Lcom/google/android/gms/common/util/Clock;

    .line 179
    .line 180
    .line 181
    move-result-object p3

    .line 182
    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 183
    .line 184
    .line 185
    move-result-wide p3

    .line 186
    invoke-virtual {p1, p3, p4}, Ly25;->b(J)V

    .line 187
    .line 188
    .line 189
    const/16 p1, 0x1f7

    .line 190
    .line 191
    if-eq p2, p1, :cond_6

    .line 192
    .line 193
    const/16 p1, 0x1ad

    .line 194
    .line 195
    if-ne p2, p1, :cond_7

    .line 196
    .line 197
    :cond_6
    iget-object p1, p0, Lpb5;->i:Lr95;

    .line 198
    .line 199
    iget-object p1, p1, Lr95;->g:Ly25;

    .line 200
    .line 201
    invoke-virtual {p0}, Lpb5;->f()Lcom/google/android/gms/common/util/Clock;

    .line 202
    .line 203
    .line 204
    move-result-object p2

    .line 205
    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 206
    .line 207
    .line 208
    move-result-wide p2

    .line 209
    invoke-virtual {p1, p2, p3}, Ly25;->b(J)V

    .line 210
    .line 211
    .line 212
    :cond_7
    invoke-virtual {p0}, Lpb5;->N()V

    .line 213
    .line 214
    .line 215
    goto/16 :goto_7

    .line 216
    .line 217
    :cond_8
    :goto_3
    invoke-virtual {p0}, Lpb5;->j0()Lub5;

    .line 218
    .line 219
    .line 220
    const-string p3, "Last-Modified"

    .line 221
    .line 222
    invoke-static {p3, p5}, Lub5;->G(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p3

    .line 226
    invoke-virtual {p0}, Lpb5;->j0()Lub5;

    .line 227
    .line 228
    .line 229
    const-string v3, "ETag"

    .line 230
    .line 231
    invoke-static {v3, p5}, Lub5;->G(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p5

    .line 235
    if-eq p2, v7, :cond_a

    .line 236
    .line 237
    if-ne p2, v6, :cond_9

    .line 238
    .line 239
    goto :goto_4

    .line 240
    :cond_9
    invoke-static {v8}, Lpb5;->T(Lab5;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v8, p1, p4, p3, p5}, Lw35;->J(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    goto :goto_5

    .line 247
    :cond_a
    :goto_4
    invoke-static {v8}, Lpb5;->T(Lab5;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v8, p1}, Lw35;->H(Ljava/lang/String;)Ln15;

    .line 251
    .line 252
    .line 253
    move-result-object p3

    .line 254
    if-nez p3, :cond_b

    .line 255
    .line 256
    invoke-static {v8}, Lpb5;->T(Lab5;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v8, p1, v5, v5, v5}, Lw35;->J(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    :cond_b
    :goto_5
    invoke-virtual {p0}, Lpb5;->f()Lcom/google/android/gms/common/util/Clock;

    .line 263
    .line 264
    .line 265
    move-result-object p3

    .line 266
    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 267
    .line 268
    .line 269
    move-result-wide p3

    .line 270
    invoke-virtual {v2, p3, p4}, Lm25;->f(J)V

    .line 271
    .line 272
    .line 273
    iget-object p3, p0, Lpb5;->c:Lat4;

    .line 274
    .line 275
    invoke-static {p3}, Lpb5;->T(Lab5;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {p3, v2, v1}, Lat4;->A0(Lm25;Z)V

    .line 279
    .line 280
    .line 281
    if-ne p2, v7, :cond_c

    .line 282
    .line 283
    invoke-virtual {p0}, Lpb5;->c()La25;

    .line 284
    .line 285
    .line 286
    move-result-object p2

    .line 287
    iget-object p2, p2, La25;->k:Lx15;

    .line 288
    .line 289
    const-string p3, "Config not found. Using empty config. appId"

    .line 290
    .line 291
    invoke-virtual {p2, p1, p3}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    goto :goto_6

    .line 295
    :cond_c
    invoke-virtual {p0}, Lpb5;->c()La25;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    iget-object p1, p1, La25;->n:Lx15;

    .line 300
    .line 301
    const-string p3, "Successfully fetched config. Got network response. code, size"

    .line 302
    .line 303
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 304
    .line 305
    .line 306
    move-result-object p2

    .line 307
    invoke-virtual {p1, p2, v4, p3}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    :goto_6
    invoke-static {v0}, Lpb5;->T(Lab5;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0}, Li25;->z()Z

    .line 314
    .line 315
    .line 316
    move-result p1

    .line 317
    if-eqz p1, :cond_d

    .line 318
    .line 319
    invoke-virtual {p0}, Lpb5;->M()Z

    .line 320
    .line 321
    .line 322
    move-result p1

    .line 323
    if-eqz p1, :cond_d

    .line 324
    .line 325
    invoke-virtual {p0}, Lpb5;->q()V

    .line 326
    .line 327
    .line 328
    goto :goto_7

    .line 329
    :cond_d
    invoke-static {v0}, Lpb5;->T(Lab5;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v0}, Li25;->z()Z

    .line 333
    .line 334
    .line 335
    move-result p1

    .line 336
    if-eqz p1, :cond_e

    .line 337
    .line 338
    iget-object p1, p0, Lpb5;->c:Lat4;

    .line 339
    .line 340
    invoke-static {p1}, Lpb5;->T(Lab5;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v2}, Lm25;->E()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object p2

    .line 347
    invoke-virtual {p1, p2}, Lat4;->B(Ljava/lang/String;)Z

    .line 348
    .line 349
    .line 350
    move-result p1

    .line 351
    if-eqz p1, :cond_e

    .line 352
    .line 353
    invoke-virtual {v2}, Lm25;->E()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object p1

    .line 357
    invoke-virtual {p0, p1}, Lpb5;->t(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    goto :goto_7

    .line 361
    :cond_e
    invoke-virtual {p0}, Lpb5;->N()V

    .line 362
    .line 363
    .line 364
    :goto_7
    iget-object p1, p0, Lpb5;->c:Lat4;

    .line 365
    .line 366
    invoke-static {p1}, Lpb5;->T(Lab5;)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {p1}, Lat4;->k0()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 370
    .line 371
    .line 372
    :try_start_3
    iget-object p1, p0, Lpb5;->c:Lat4;

    .line 373
    .line 374
    invoke-static {p1}, Lpb5;->T(Lab5;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {p1}, Lat4;->l0()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 378
    .line 379
    .line 380
    iput-boolean v1, p0, Lpb5;->t:Z

    .line 381
    .line 382
    invoke-virtual {p0}, Lpb5;->O()V

    .line 383
    .line 384
    .line 385
    return-void

    .line 386
    :goto_8
    :try_start_4
    iget-object p2, p0, Lpb5;->c:Lat4;

    .line 387
    .line 388
    invoke-static {p2}, Lpb5;->T(Lab5;)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {p2}, Lat4;->l0()V

    .line 392
    .line 393
    .line 394
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 395
    :goto_9
    iput-boolean v1, p0, Lpb5;->t:Z

    .line 396
    .line 397
    invoke-virtual {p0}, Lpb5;->O()V

    .line 398
    .line 399
    .line 400
    throw p1
.end method

.method public final F(Ljava/lang/String;Ldd1;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lpb5;->a:Lw35;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lw35;->R(Ljava/lang/String;)Lx05;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    sget-object v3, Lx55;->r:Lx55;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    sget-object p0, Lgs4;->w:Lgs4;

    .line 13
    .line 14
    invoke-virtual {p2, v3, p0}, Ldd1;->w(Lx55;Lgs4;)V

    .line 15
    .line 16
    .line 17
    return v2

    .line 18
    :cond_0
    iget-object p0, p0, Lpb5;->c:Lat4;

    .line 19
    .line 20
    invoke-static {p0}, Lpb5;->T(Lab5;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lat4;->z0(Ljava/lang/String;)Lm25;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Lm25;->s()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p0}, Lra3;->p(Ljava/lang/String;)Lra3;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    iget-object p0, p0, Lra3;->o:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p0, Lu55;

    .line 40
    .line 41
    sget-object v1, Lu55;->p:Lu55;

    .line 42
    .line 43
    if-ne p0, v1, :cond_1

    .line 44
    .line 45
    invoke-virtual {v0, p1, v3}, Lw35;->z(Ljava/lang/String;Lx55;)Lu55;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    sget-object v1, Lu55;->o:Lu55;

    .line 50
    .line 51
    if-eq p0, v1, :cond_1

    .line 52
    .line 53
    sget-object p1, Lgs4;->v:Lgs4;

    .line 54
    .line 55
    invoke-virtual {p2, v3, p1}, Ldd1;->w(Lx55;Lgs4;)V

    .line 56
    .line 57
    .line 58
    sget-object p1, Lu55;->r:Lu55;

    .line 59
    .line 60
    if-ne p0, p1, :cond_2

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    sget-object p0, Lgs4;->p:Lgs4;

    .line 64
    .line 65
    invoke-virtual {p2, v3, p0}, Ldd1;->w(Lx55;Lgs4;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p1, v3}, Lw35;->Q(Ljava/lang/String;Lx55;)Z

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    if-eqz p0, :cond_2

    .line 73
    .line 74
    :goto_0
    const/4 p0, 0x0

    .line 75
    return p0

    .line 76
    :cond_2
    return v2
.end method

.method public final G(Lu35;)Ljava/util/HashMap;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lpb5;->j0()Lub5;

    .line 7
    .line 8
    .line 9
    new-instance p0, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lu35;->v()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lc45;

    .line 33
    .line 34
    invoke-virtual {v1}, Lc45;->u()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const-string v3, "gad_"

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    invoke-static {v1}, Lub5;->N(Lc45;)Ljava/io/Serializable;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    if-eqz v2, :cond_0

    .line 51
    .line 52
    invoke-virtual {v1}, Lc45;->u()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_2

    .line 73
    .line 74
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Ljava/util/Map$Entry;

    .line 79
    .line 80
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    check-cast v1, Ljava/lang/String;

    .line 85
    .line 86
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_2
    return-object v0
.end method

.method public final H()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lpb5;->d()Lj45;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lj45;->v()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lpb5;->q:Ljava/util/LinkedList;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_3

    .line 15
    .line 16
    iget-object v0, p0, Lpb5;->H:Lea5;

    .line 17
    .line 18
    const/4 v1, 0x2

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lpb5;->l:Lr45;

    .line 22
    .line 23
    new-instance v2, Lea5;

    .line 24
    .line 25
    invoke-direct {v2, p0, v0, v1}, Lea5;-><init>(Ljava/lang/Object;Ls55;I)V

    .line 26
    .line 27
    .line 28
    iput-object v2, p0, Lpb5;->H:Lea5;

    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lpb5;->H:Lea5;

    .line 31
    .line 32
    iget-wide v2, v0, Let4;->c:J

    .line 33
    .line 34
    const-wide/16 v4, 0x0

    .line 35
    .line 36
    cmp-long v0, v2, v4

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    invoke-virtual {p0}, Lpb5;->f()Lcom/google/android/gms/common/util/Clock;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 46
    .line 47
    .line 48
    move-result-wide v2

    .line 49
    iget-wide v6, p0, Lpb5;->I:J

    .line 50
    .line 51
    sub-long/2addr v2, v6

    .line 52
    sget-object v0, Le05;->A0:Ld05;

    .line 53
    .line 54
    const/4 v6, 0x0

    .line 55
    invoke-virtual {v0, v6}, Ld05;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Ljava/lang/Integer;

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    int-to-long v6, v0

    .line 66
    sub-long/2addr v6, v2

    .line 67
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 68
    .line 69
    .line 70
    move-result-wide v2

    .line 71
    invoke-virtual {p0}, Lpb5;->c()La25;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iget-object v0, v0, La25;->n:Lx15;

    .line 76
    .line 77
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    const-string v5, "Scheduling notify next app runnable, delay in ms"

    .line 82
    .line 83
    invoke-virtual {v0, v4, v5}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lpb5;->H:Lea5;

    .line 87
    .line 88
    if-nez v0, :cond_2

    .line 89
    .line 90
    iget-object v0, p0, Lpb5;->l:Lr45;

    .line 91
    .line 92
    new-instance v4, Lea5;

    .line 93
    .line 94
    invoke-direct {v4, p0, v0, v1}, Lea5;-><init>(Ljava/lang/Object;Ls55;I)V

    .line 95
    .line 96
    .line 97
    iput-object v4, p0, Lpb5;->H:Lea5;

    .line 98
    .line 99
    :cond_2
    iget-object p0, p0, Lpb5;->H:Lea5;

    .line 100
    .line 101
    invoke-virtual {p0, v2, v3}, Let4;->b(J)V

    .line 102
    .line 103
    .line 104
    :cond_3
    return-void
.end method

.method public final I(JLjava/lang/String;)Z
    .locals 46

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "_f"

    .line 4
    .line 5
    const-string v2, "1"

    .line 6
    .line 7
    const-string v3, "_ai"

    .line 8
    .line 9
    const-string v4, "purchase"

    .line 10
    .line 11
    const-string v5, "items"

    .line 12
    .line 13
    const-wide/16 v6, 0x1

    .line 14
    .line 15
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object v8

    .line 19
    invoke-virtual {v1}, Lpb5;->g0()Lat4;

    .line 20
    .line 21
    .line 22
    move-result-object v9

    .line 23
    invoke-virtual {v9}, Lat4;->j0()V

    .line 24
    .line 25
    .line 26
    :try_start_0
    new-instance v9, Lq41;

    .line 27
    .line 28
    invoke-direct {v9, v1}, Lq41;-><init>(Lpb5;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Lpb5;->g0()Lat4;

    .line 32
    .line 33
    .line 34
    move-result-object v10

    .line 35
    iget-wide v14, v1, Lpb5;->A:J

    .line 36
    .line 37
    move-wide/from16 v12, p1

    .line 38
    .line 39
    move-object/from16 v11, p3

    .line 40
    .line 41
    move-object/from16 v16, v9

    .line 42
    .line 43
    invoke-virtual/range {v10 .. v16}, Lat4;->h0(Ljava/lang/String;JJLq41;)V

    .line 44
    .line 45
    .line 46
    move-object/from16 v9, v16

    .line 47
    .line 48
    iget-object v10, v9, Lq41;->q:Ljava/io/Serializable;

    .line 49
    .line 50
    check-cast v10, Ljava/util/ArrayList;

    .line 51
    .line 52
    if-eqz v10, :cond_0

    .line 53
    .line 54
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result v10

    .line 58
    if-eqz v10, :cond_1

    .line 59
    .line 60
    :cond_0
    const/4 v3, 0x0

    .line 61
    goto/16 :goto_3b

    .line 62
    .line 63
    :cond_1
    iget-object v10, v9, Lq41;->o:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v10, Lu45;

    .line 66
    .line 67
    invoke-virtual {v10}, Lrn4;->k()Lpn4;

    .line 68
    .line 69
    .line 70
    move-result-object v10

    .line 71
    check-cast v10, Lq45;

    .line 72
    .line 73
    invoke-virtual {v10}, Lpn4;->b()V

    .line 74
    .line 75
    .line 76
    iget-object v12, v10, Lpn4;->o:Lrn4;

    .line 77
    .line 78
    check-cast v12, Lu45;

    .line 79
    .line 80
    invoke-virtual {v12}, Lu45;->e0()V

    .line 81
    .line 82
    .line 83
    const/4 v11, -0x1

    .line 84
    const/4 v12, -0x1

    .line 85
    const/4 v14, 0x0

    .line 86
    const/4 v15, 0x0

    .line 87
    const/16 v16, 0x0

    .line 88
    .line 89
    const/16 v17, 0x0

    .line 90
    .line 91
    const/16 v18, 0x0

    .line 92
    .line 93
    const/16 v19, 0x0

    .line 94
    .line 95
    :goto_0
    iget-object v6, v9, Lq41;->q:Ljava/io/Serializable;

    .line 96
    .line 97
    check-cast v6, Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 100
    .line 101
    .line 102
    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    const-string v7, "_et"

    .line 104
    .line 105
    const-string v13, "_fr"

    .line 106
    .line 107
    move/from16 v22, v15

    .line 108
    .line 109
    const-string v15, "_e"

    .line 110
    .line 111
    move-object/from16 v23, v8

    .line 112
    .line 113
    iget-object v8, v1, Lpb5;->l:Lr45;

    .line 114
    .line 115
    move-object/from16 v24, v7

    .line 116
    .line 117
    move-object/from16 v25, v8

    .line 118
    .line 119
    const-wide/16 v26, 0x0

    .line 120
    .line 121
    if-ge v14, v6, :cond_36

    .line 122
    .line 123
    :try_start_1
    iget-object v6, v9, Lq41;->q:Ljava/io/Serializable;

    .line 124
    .line 125
    check-cast v6, Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    check-cast v6, Lu35;

    .line 132
    .line 133
    invoke-virtual {v6}, Lrn4;->k()Lpn4;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    check-cast v6, Ls35;

    .line 138
    .line 139
    invoke-virtual {v1}, Lpb5;->f0()Lw35;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    const/16 v28, 0x1

    .line 144
    .line 145
    iget-object v7, v9, Lq41;->o:Ljava/lang/Object;

    .line 146
    .line 147
    check-cast v7, Lu45;

    .line 148
    .line 149
    invoke-virtual {v7}, Lu45;->t()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    move/from16 v29, v14

    .line 154
    .line 155
    invoke-virtual {v6}, Ls35;->m()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v14

    .line 159
    invoke-virtual {v8, v7, v14}, Lw35;->K(Ljava/lang/String;Ljava/lang/String;)Z

    .line 160
    .line 161
    .line 162
    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    const-string v8, "_err"

    .line 164
    .line 165
    if-eqz v7, :cond_4

    .line 166
    .line 167
    :try_start_2
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 168
    .line 169
    .line 170
    move-result-object v7

    .line 171
    invoke-virtual {v7}, La25;->A()Lx15;

    .line 172
    .line 173
    .line 174
    move-result-object v7

    .line 175
    const-string v13, "Dropping blocked raw event. appId"

    .line 176
    .line 177
    iget-object v14, v9, Lq41;->o:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast v14, Lu45;

    .line 180
    .line 181
    invoke-virtual {v14}, Lu45;->t()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v14

    .line 185
    invoke-static {v14}, La25;->D(Ljava/lang/String;)Ly15;

    .line 186
    .line 187
    .line 188
    move-result-object v14

    .line 189
    invoke-virtual/range {v25 .. v25}, Lr45;->m()Lp15;

    .line 190
    .line 191
    .line 192
    move-result-object v15

    .line 193
    move-object/from16 v30, v5

    .line 194
    .line 195
    invoke-virtual {v6}, Ls35;->m()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    invoke-virtual {v15, v5}, Lp15;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v5

    .line 203
    invoke-virtual {v7, v14, v5, v13}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1}, Lpb5;->f0()Lw35;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    iget-object v7, v9, Lq41;->o:Ljava/lang/Object;

    .line 211
    .line 212
    check-cast v7, Lu45;

    .line 213
    .line 214
    invoke-virtual {v7}, Lu45;->t()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v7

    .line 218
    const-string v13, "measurement.upload.blacklist_internal"

    .line 219
    .line 220
    invoke-virtual {v5, v7, v13}, Lw35;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v5

    .line 224
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v5

    .line 228
    if-nez v5, :cond_3

    .line 229
    .line 230
    invoke-virtual {v1}, Lpb5;->f0()Lw35;

    .line 231
    .line 232
    .line 233
    move-result-object v5

    .line 234
    iget-object v7, v9, Lq41;->o:Ljava/lang/Object;

    .line 235
    .line 236
    check-cast v7, Lu45;

    .line 237
    .line 238
    invoke-virtual {v7}, Lu45;->t()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v7

    .line 242
    const-string v13, "measurement.upload.blacklist_public"

    .line 243
    .line 244
    invoke-virtual {v5, v7, v13}, Lw35;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v5

    .line 248
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v5

    .line 252
    if-eqz v5, :cond_2

    .line 253
    .line 254
    goto :goto_1

    .line 255
    :cond_2
    invoke-virtual {v6}, Ls35;->m()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v5

    .line 259
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v5

    .line 263
    if-nez v5, :cond_3

    .line 264
    .line 265
    invoke-virtual {v1}, Lpb5;->k0()Lac5;

    .line 266
    .line 267
    .line 268
    iget-object v5, v1, Lpb5;->J:Llb5;

    .line 269
    .line 270
    iget-object v7, v9, Lq41;->o:Ljava/lang/Object;

    .line 271
    .line 272
    check-cast v7, Lu45;

    .line 273
    .line 274
    invoke-virtual {v7}, Lu45;->t()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v32

    .line 278
    const-string v34, "_ev"

    .line 279
    .line 280
    invoke-virtual {v6}, Ls35;->m()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v35

    .line 284
    const/16 v36, 0x0

    .line 285
    .line 286
    const/16 v33, 0xb

    .line 287
    .line 288
    move-object/from16 v31, v5

    .line 289
    .line 290
    invoke-static/range {v31 .. v36}, Lac5;->N(Lyb5;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 291
    .line 292
    .line 293
    goto :goto_1

    .line 294
    :catchall_0
    move-exception v0

    .line 295
    goto/16 :goto_3d

    .line 296
    .line 297
    :cond_3
    :goto_1
    move-object/from16 v31, v2

    .line 298
    .line 299
    move-object v7, v4

    .line 300
    move/from16 v15, v22

    .line 301
    .line 302
    move/from16 v4, v29

    .line 303
    .line 304
    move-object/from16 v13, v30

    .line 305
    .line 306
    move-object/from16 v30, v3

    .line 307
    .line 308
    goto/16 :goto_19

    .line 309
    .line 310
    :cond_4
    move-object/from16 v30, v5

    .line 311
    .line 312
    invoke-virtual {v6}, Ls35;->m()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v5

    .line 316
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 320
    const-string v14, "in_app_purchase"

    .line 321
    .line 322
    move-object/from16 v31, v2

    .line 323
    .line 324
    const-string v2, "ecommerce_purchase"

    .line 325
    .line 326
    move/from16 v32, v7

    .line 327
    .line 328
    const-string v7, "_iap"

    .line 329
    .line 330
    if-nez v32, :cond_5

    .line 331
    .line 332
    :try_start_3
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    move-result v32

    .line 336
    if-nez v32, :cond_5

    .line 337
    .line 338
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    move-result v32

    .line 342
    if-nez v32, :cond_5

    .line 343
    .line 344
    move/from16 v32, v12

    .line 345
    .line 346
    invoke-virtual {v1}, Lpb5;->e0()Lds4;

    .line 347
    .line 348
    .line 349
    move-result-object v12

    .line 350
    move-object/from16 v33, v10

    .line 351
    .line 352
    sget-object v10, Le05;->f1:Ld05;

    .line 353
    .line 354
    move/from16 v34, v11

    .line 355
    .line 356
    const/4 v11, 0x0

    .line 357
    invoke-virtual {v12, v11, v10}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 358
    .line 359
    .line 360
    move-result v10

    .line 361
    if-eqz v10, :cond_7

    .line 362
    .line 363
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    move-result v5

    .line 367
    if-eqz v5, :cond_7

    .line 368
    .line 369
    goto :goto_2

    .line 370
    :cond_5
    move-object/from16 v33, v10

    .line 371
    .line 372
    move/from16 v34, v11

    .line 373
    .line 374
    move/from16 v32, v12

    .line 375
    .line 376
    :goto_2
    invoke-static {}, Lc45;->F()La45;

    .line 377
    .line 378
    .line 379
    move-result-object v5

    .line 380
    const-string v10, "_ct"

    .line 381
    .line 382
    invoke-virtual {v5, v10}, La45;->g(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    if-nez v16, :cond_6

    .line 386
    .line 387
    iget-object v10, v9, Lq41;->o:Ljava/lang/Object;

    .line 388
    .line 389
    check-cast v10, Lu45;

    .line 390
    .line 391
    invoke-virtual {v10}, Lu45;->t()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v10

    .line 395
    invoke-virtual {v1, v10, v4}, Lpb5;->R(Ljava/lang/String;Ljava/lang/String;)Z

    .line 396
    .line 397
    .line 398
    move-result v11

    .line 399
    if-eqz v11, :cond_6

    .line 400
    .line 401
    invoke-virtual {v1, v10, v7}, Lpb5;->R(Ljava/lang/String;Ljava/lang/String;)Z

    .line 402
    .line 403
    .line 404
    move-result v11

    .line 405
    if-eqz v11, :cond_6

    .line 406
    .line 407
    invoke-virtual {v1, v10, v2}, Lpb5;->R(Ljava/lang/String;Ljava/lang/String;)Z

    .line 408
    .line 409
    .line 410
    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 411
    if-eqz v2, :cond_6

    .line 412
    .line 413
    const-string v2, "new"

    .line 414
    .line 415
    goto :goto_3

    .line 416
    :cond_6
    const-string v2, "returning"

    .line 417
    .line 418
    :goto_3
    :try_start_4
    invoke-virtual {v5, v2}, La45;->h(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v5}, Lpn4;->d()Lrn4;

    .line 422
    .line 423
    .line 424
    move-result-object v2

    .line 425
    check-cast v2, Lc45;

    .line 426
    .line 427
    invoke-virtual {v6, v2}, Ls35;->j(Lc45;)V

    .line 428
    .line 429
    .line 430
    move/from16 v16, v28

    .line 431
    .line 432
    :cond_7
    invoke-virtual {v6}, Ls35;->m()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v2

    .line 436
    sget-object v5, Lca;->l:[Ljava/lang/String;

    .line 437
    .line 438
    sget-object v10, Lca;->g:[Ljava/lang/String;

    .line 439
    .line 440
    invoke-static {v3, v5, v10}, Lvm4;->e(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v5

    .line 444
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 445
    .line 446
    .line 447
    move-result v2

    .line 448
    if-eqz v2, :cond_9

    .line 449
    .line 450
    invoke-virtual {v6, v3}, Ls35;->n(Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 454
    .line 455
    .line 456
    move-result-object v2

    .line 457
    invoke-virtual {v2}, La25;->C()Lx15;

    .line 458
    .line 459
    .line 460
    move-result-object v2

    .line 461
    const-string v5, "Renaming ad_impression to _ai"

    .line 462
    .line 463
    invoke-virtual {v2, v5}, Lx15;->a(Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 467
    .line 468
    .line 469
    move-result-object v2

    .line 470
    invoke-virtual {v2}, La25;->F()Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v2

    .line 474
    const/4 v5, 0x5

    .line 475
    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 476
    .line 477
    .line 478
    move-result v2

    .line 479
    if-eqz v2, :cond_9

    .line 480
    .line 481
    const/4 v2, 0x0

    .line 482
    :goto_4
    invoke-virtual {v6}, Ls35;->h()I

    .line 483
    .line 484
    .line 485
    move-result v5

    .line 486
    if-ge v2, v5, :cond_9

    .line 487
    .line 488
    const-string v5, "ad_platform"

    .line 489
    .line 490
    invoke-virtual {v6, v2}, Ls35;->i(I)Lc45;

    .line 491
    .line 492
    .line 493
    move-result-object v10

    .line 494
    invoke-virtual {v10}, Lc45;->u()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v10

    .line 498
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 499
    .line 500
    .line 501
    move-result v5

    .line 502
    if-eqz v5, :cond_8

    .line 503
    .line 504
    invoke-virtual {v6, v2}, Ls35;->i(I)Lc45;

    .line 505
    .line 506
    .line 507
    move-result-object v5

    .line 508
    invoke-virtual {v5}, Lc45;->w()Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v5

    .line 512
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 513
    .line 514
    .line 515
    move-result v5

    .line 516
    if-nez v5, :cond_8

    .line 517
    .line 518
    const-string v5, "admob"

    .line 519
    .line 520
    invoke-virtual {v6, v2}, Ls35;->i(I)Lc45;

    .line 521
    .line 522
    .line 523
    move-result-object v10

    .line 524
    invoke-virtual {v10}, Lc45;->w()Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v10

    .line 528
    invoke-virtual {v5, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 529
    .line 530
    .line 531
    move-result v5

    .line 532
    if-eqz v5, :cond_8

    .line 533
    .line 534
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 535
    .line 536
    .line 537
    move-result-object v5

    .line 538
    iget-object v5, v5, La25;->k:Lx15;

    .line 539
    .line 540
    const-string v10, "AdMob ad impression logged from app. Potentially duplicative."

    .line 541
    .line 542
    invoke-virtual {v5, v10}, Lx15;->a(Ljava/lang/String;)V

    .line 543
    .line 544
    .line 545
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 546
    .line 547
    goto :goto_4

    .line 548
    :cond_9
    invoke-virtual {v1}, Lpb5;->e0()Lds4;

    .line 549
    .line 550
    .line 551
    move-result-object v2

    .line 552
    sget-object v5, Le05;->f1:Ld05;

    .line 553
    .line 554
    const/4 v11, 0x0

    .line 555
    invoke-virtual {v2, v11, v5}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 556
    .line 557
    .line 558
    move-result v2

    .line 559
    if-eqz v2, :cond_a

    .line 560
    .line 561
    invoke-virtual {v6}, Ls35;->m()Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v2

    .line 565
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 566
    .line 567
    .line 568
    move-result v2

    .line 569
    if-eqz v2, :cond_a

    .line 570
    .line 571
    invoke-virtual {v6, v7}, Ls35;->n(Ljava/lang/String;)V

    .line 572
    .line 573
    .line 574
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 575
    .line 576
    .line 577
    move-result-object v2

    .line 578
    invoke-virtual {v2}, La25;->C()Lx15;

    .line 579
    .line 580
    .line 581
    move-result-object v2

    .line 582
    const-string v10, "Renaming in_app_purchase to _iap"

    .line 583
    .line 584
    invoke-virtual {v2, v10}, Lx15;->a(Ljava/lang/String;)V

    .line 585
    .line 586
    .line 587
    :cond_a
    invoke-virtual {v1}, Lpb5;->f0()Lw35;

    .line 588
    .line 589
    .line 590
    move-result-object v2

    .line 591
    iget-object v10, v9, Lq41;->o:Ljava/lang/Object;

    .line 592
    .line 593
    check-cast v10, Lu45;

    .line 594
    .line 595
    invoke-virtual {v10}, Lu45;->t()Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v10

    .line 599
    invoke-virtual {v6}, Ls35;->m()Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object v11

    .line 603
    invoke-virtual {v2, v10, v11}, Lw35;->L(Ljava/lang/String;Ljava/lang/String;)Z

    .line 604
    .line 605
    .line 606
    move-result v2

    .line 607
    invoke-virtual {v1}, Lpb5;->e0()Lds4;

    .line 608
    .line 609
    .line 610
    move-result-object v10

    .line 611
    const/4 v11, 0x0

    .line 612
    invoke-virtual {v10, v11, v5}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 613
    .line 614
    .line 615
    move-result v5

    .line 616
    if-eqz v5, :cond_f

    .line 617
    .line 618
    invoke-virtual {v6}, Ls35;->m()Ljava/lang/String;

    .line 619
    .line 620
    .line 621
    move-result-object v5

    .line 622
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 623
    .line 624
    .line 625
    move-result v5

    .line 626
    if-eqz v5, :cond_f

    .line 627
    .line 628
    invoke-virtual {v1, v6}, Lpb5;->y(Ls35;)Z

    .line 629
    .line 630
    .line 631
    move-result v2

    .line 632
    iget-object v5, v9, Lq41;->o:Ljava/lang/Object;

    .line 633
    .line 634
    check-cast v5, Lu45;

    .line 635
    .line 636
    invoke-virtual {v5}, Lu45;->t()Ljava/lang/String;

    .line 637
    .line 638
    .line 639
    move-result-object v5

    .line 640
    invoke-virtual {v6}, Ls35;->m()Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v10

    .line 644
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 645
    .line 646
    .line 647
    move-result v10

    .line 648
    if-eqz v10, :cond_b

    .line 649
    .line 650
    const-string v10, "value"

    .line 651
    .line 652
    invoke-virtual {v1, v6, v10, v5}, Lpb5;->L(Ls35;Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    .line 654
    .line 655
    const-string v10, "price"

    .line 656
    .line 657
    invoke-virtual {v1, v6, v10, v5}, Lpb5;->L(Ls35;Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    .line 659
    .line 660
    :cond_b
    invoke-virtual {v6}, Ls35;->m()Ljava/lang/String;

    .line 661
    .line 662
    .line 663
    move-result-object v5

    .line 664
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 665
    .line 666
    .line 667
    move-result v5

    .line 668
    if-nez v5, :cond_c

    .line 669
    .line 670
    goto :goto_6

    .line 671
    :cond_c
    new-instance v5, Ljava/util/ArrayList;

    .line 672
    .line 673
    invoke-virtual {v6}, Ls35;->g()Ljava/util/List;

    .line 674
    .line 675
    .line 676
    move-result-object v7

    .line 677
    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 678
    .line 679
    .line 680
    const/4 v7, 0x0

    .line 681
    :goto_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 682
    .line 683
    .line 684
    move-result v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 685
    const-string v11, "quantity"

    .line 686
    .line 687
    if-ge v7, v10, :cond_e

    .line 688
    .line 689
    :try_start_5
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 690
    .line 691
    .line 692
    move-result-object v10

    .line 693
    check-cast v10, Lc45;

    .line 694
    .line 695
    invoke-virtual {v10}, Lc45;->u()Ljava/lang/String;

    .line 696
    .line 697
    .line 698
    move-result-object v10

    .line 699
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 700
    .line 701
    .line 702
    move-result v10

    .line 703
    if-eqz v10, :cond_d

    .line 704
    .line 705
    goto :goto_6

    .line 706
    :cond_d
    add-int/lit8 v7, v7, 0x1

    .line 707
    .line 708
    goto :goto_5

    .line 709
    :cond_e
    invoke-static {}, Lc45;->F()La45;

    .line 710
    .line 711
    .line 712
    move-result-object v5

    .line 713
    invoke-virtual {v5, v11}, La45;->g(Ljava/lang/String;)V

    .line 714
    .line 715
    .line 716
    const-wide/16 v10, 0x1

    .line 717
    .line 718
    invoke-virtual {v5, v10, v11}, La45;->i(J)V

    .line 719
    .line 720
    .line 721
    invoke-virtual {v5}, Lpn4;->d()Lrn4;

    .line 722
    .line 723
    .line 724
    move-result-object v5

    .line 725
    check-cast v5, Lc45;

    .line 726
    .line 727
    invoke-virtual {v6, v5}, Ls35;->j(Lc45;)V

    .line 728
    .line 729
    .line 730
    :cond_f
    :goto_6
    if-nez v2, :cond_11

    .line 731
    .line 732
    invoke-virtual {v1}, Lpb5;->j0()Lub5;

    .line 733
    .line 734
    .line 735
    invoke-virtual {v6}, Ls35;->m()Ljava/lang/String;

    .line 736
    .line 737
    .line 738
    move-result-object v5

    .line 739
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 740
    .line 741
    .line 742
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 743
    .line 744
    .line 745
    move-result v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 746
    const v10, 0x17333

    .line 747
    .line 748
    .line 749
    if-eq v7, v10, :cond_10

    .line 750
    .line 751
    goto :goto_7

    .line 752
    :cond_10
    const-string v7, "_ui"

    .line 753
    .line 754
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 755
    .line 756
    .line 757
    move-result v5

    .line 758
    if-eqz v5, :cond_12

    .line 759
    .line 760
    :cond_11
    const/4 v5, 0x0

    .line 761
    const/4 v7, 0x0

    .line 762
    const/4 v10, 0x0

    .line 763
    goto :goto_8

    .line 764
    :cond_12
    :goto_7
    move-object v5, v3

    .line 765
    move-object v7, v4

    .line 766
    const/16 v35, 0x0

    .line 767
    .line 768
    goto/16 :goto_e

    .line 769
    .line 770
    :goto_8
    :try_start_6
    invoke-virtual {v6}, Ls35;->h()I

    .line 771
    .line 772
    .line 773
    move-result v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 774
    const-string v12, "_r"

    .line 775
    .line 776
    const-string v14, "_c"

    .line 777
    .line 778
    if-ge v5, v11, :cond_15

    .line 779
    .line 780
    :try_start_7
    invoke-virtual {v6, v5}, Ls35;->i(I)Lc45;

    .line 781
    .line 782
    .line 783
    move-result-object v11

    .line 784
    invoke-virtual {v11}, Lc45;->u()Ljava/lang/String;

    .line 785
    .line 786
    .line 787
    move-result-object v11

    .line 788
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 789
    .line 790
    .line 791
    move-result v11

    .line 792
    if-eqz v11, :cond_13

    .line 793
    .line 794
    invoke-virtual {v6, v5}, Ls35;->i(I)Lc45;

    .line 795
    .line 796
    .line 797
    move-result-object v7

    .line 798
    invoke-virtual {v7}, Lrn4;->k()Lpn4;

    .line 799
    .line 800
    .line 801
    move-result-object v7

    .line 802
    check-cast v7, La45;

    .line 803
    .line 804
    const-wide/16 v11, 0x1

    .line 805
    .line 806
    invoke-virtual {v7, v11, v12}, La45;->i(J)V

    .line 807
    .line 808
    .line 809
    invoke-virtual {v7}, Lpn4;->d()Lrn4;

    .line 810
    .line 811
    .line 812
    move-result-object v7

    .line 813
    check-cast v7, Lc45;

    .line 814
    .line 815
    invoke-virtual {v6}, Lpn4;->b()V

    .line 816
    .line 817
    .line 818
    iget-object v11, v6, Lpn4;->o:Lrn4;

    .line 819
    .line 820
    check-cast v11, Lu35;

    .line 821
    .line 822
    invoke-virtual {v11, v5, v7}, Lu35;->K(ILc45;)V

    .line 823
    .line 824
    .line 825
    move/from16 v7, v28

    .line 826
    .line 827
    goto :goto_9

    .line 828
    :cond_13
    invoke-virtual {v6, v5}, Ls35;->i(I)Lc45;

    .line 829
    .line 830
    .line 831
    move-result-object v11

    .line 832
    invoke-virtual {v11}, Lc45;->u()Ljava/lang/String;

    .line 833
    .line 834
    .line 835
    move-result-object v11

    .line 836
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 837
    .line 838
    .line 839
    move-result v11

    .line 840
    if-eqz v11, :cond_14

    .line 841
    .line 842
    invoke-virtual {v6, v5}, Ls35;->i(I)Lc45;

    .line 843
    .line 844
    .line 845
    move-result-object v10

    .line 846
    invoke-virtual {v10}, Lrn4;->k()Lpn4;

    .line 847
    .line 848
    .line 849
    move-result-object v10

    .line 850
    check-cast v10, La45;

    .line 851
    .line 852
    const-wide/16 v11, 0x1

    .line 853
    .line 854
    invoke-virtual {v10, v11, v12}, La45;->i(J)V

    .line 855
    .line 856
    .line 857
    invoke-virtual {v10}, Lpn4;->d()Lrn4;

    .line 858
    .line 859
    .line 860
    move-result-object v10

    .line 861
    check-cast v10, Lc45;

    .line 862
    .line 863
    invoke-virtual {v6}, Lpn4;->b()V

    .line 864
    .line 865
    .line 866
    iget-object v11, v6, Lpn4;->o:Lrn4;

    .line 867
    .line 868
    check-cast v11, Lu35;

    .line 869
    .line 870
    invoke-virtual {v11, v5, v10}, Lu35;->K(ILc45;)V

    .line 871
    .line 872
    .line 873
    move/from16 v10, v28

    .line 874
    .line 875
    :cond_14
    :goto_9
    add-int/lit8 v5, v5, 0x1

    .line 876
    .line 877
    goto :goto_8

    .line 878
    :cond_15
    if-nez v7, :cond_16

    .line 879
    .line 880
    if-eqz v2, :cond_16

    .line 881
    .line 882
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 883
    .line 884
    .line 885
    move-result-object v5

    .line 886
    invoke-virtual {v5}, La25;->C()Lx15;

    .line 887
    .line 888
    .line 889
    move-result-object v5

    .line 890
    const-string v7, "Marking event as conversion"

    .line 891
    .line 892
    invoke-virtual/range {v25 .. v25}, Lr45;->m()Lp15;

    .line 893
    .line 894
    .line 895
    move-result-object v11

    .line 896
    move/from16 v35, v2

    .line 897
    .line 898
    invoke-virtual {v6}, Ls35;->m()Ljava/lang/String;

    .line 899
    .line 900
    .line 901
    move-result-object v2

    .line 902
    invoke-virtual {v11, v2}, Lp15;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 903
    .line 904
    .line 905
    move-result-object v2

    .line 906
    invoke-virtual {v5, v2, v7}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 907
    .line 908
    .line 909
    invoke-static {}, Lc45;->F()La45;

    .line 910
    .line 911
    .line 912
    move-result-object v2

    .line 913
    invoke-virtual {v2, v14}, La45;->g(Ljava/lang/String;)V

    .line 914
    .line 915
    .line 916
    move-object v5, v3

    .line 917
    move-object v7, v4

    .line 918
    const-wide/16 v3, 0x1

    .line 919
    .line 920
    invoke-virtual {v2, v3, v4}, La45;->i(J)V

    .line 921
    .line 922
    .line 923
    invoke-virtual {v6, v2}, Ls35;->k(La45;)V

    .line 924
    .line 925
    .line 926
    goto :goto_a

    .line 927
    :cond_16
    move/from16 v35, v2

    .line 928
    .line 929
    move-object v5, v3

    .line 930
    move-object v7, v4

    .line 931
    :goto_a
    if-nez v10, :cond_17

    .line 932
    .line 933
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 934
    .line 935
    .line 936
    move-result-object v2

    .line 937
    invoke-virtual {v2}, La25;->C()Lx15;

    .line 938
    .line 939
    .line 940
    move-result-object v2

    .line 941
    const-string v3, "Marking event as real-time"

    .line 942
    .line 943
    invoke-virtual/range {v25 .. v25}, Lr45;->m()Lp15;

    .line 944
    .line 945
    .line 946
    move-result-object v4

    .line 947
    invoke-virtual {v6}, Ls35;->m()Ljava/lang/String;

    .line 948
    .line 949
    .line 950
    move-result-object v10

    .line 951
    invoke-virtual {v4, v10}, Lp15;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 952
    .line 953
    .line 954
    move-result-object v4

    .line 955
    invoke-virtual {v2, v4, v3}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 956
    .line 957
    .line 958
    invoke-static {}, Lc45;->F()La45;

    .line 959
    .line 960
    .line 961
    move-result-object v2

    .line 962
    invoke-virtual {v2, v12}, La45;->g(Ljava/lang/String;)V

    .line 963
    .line 964
    .line 965
    const-wide/16 v3, 0x1

    .line 966
    .line 967
    invoke-virtual {v2, v3, v4}, La45;->i(J)V

    .line 968
    .line 969
    .line 970
    invoke-virtual {v6, v2}, Ls35;->k(La45;)V

    .line 971
    .line 972
    .line 973
    :cond_17
    invoke-virtual {v1}, Lpb5;->g0()Lat4;

    .line 974
    .line 975
    .line 976
    move-result-object v36

    .line 977
    invoke-virtual {v1}, Lpb5;->g()J

    .line 978
    .line 979
    .line 980
    move-result-wide v37

    .line 981
    iget-object v2, v9, Lq41;->o:Ljava/lang/Object;

    .line 982
    .line 983
    check-cast v2, Lu45;

    .line 984
    .line 985
    invoke-virtual {v2}, Lu45;->t()Ljava/lang/String;

    .line 986
    .line 987
    .line 988
    move-result-object v39

    .line 989
    const/16 v42, 0x0

    .line 990
    .line 991
    const/16 v43, 0x0

    .line 992
    .line 993
    const/16 v40, 0x0

    .line 994
    .line 995
    const/16 v41, 0x1

    .line 996
    .line 997
    invoke-virtual/range {v36 .. v43}, Lat4;->B0(JLjava/lang/String;ZZZZ)Lrs4;

    .line 998
    .line 999
    .line 1000
    move-result-object v2

    .line 1001
    iget-wide v2, v2, Lrs4;->e:J

    .line 1002
    .line 1003
    invoke-virtual {v1}, Lpb5;->e0()Lds4;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v4

    .line 1007
    iget-object v10, v9, Lq41;->o:Ljava/lang/Object;

    .line 1008
    .line 1009
    check-cast v10, Lu45;

    .line 1010
    .line 1011
    invoke-virtual {v10}, Lu45;->t()Ljava/lang/String;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v10

    .line 1015
    sget-object v11, Le05;->p:Ld05;

    .line 1016
    .line 1017
    invoke-virtual {v4, v10, v11}, Lds4;->E(Ljava/lang/String;Ld05;)I

    .line 1018
    .line 1019
    .line 1020
    move-result v4

    .line 1021
    int-to-long v10, v4

    .line 1022
    cmp-long v2, v2, v10

    .line 1023
    .line 1024
    if-lez v2, :cond_18

    .line 1025
    .line 1026
    invoke-static {v6, v12}, Lpb5;->E(Ls35;Ljava/lang/String;)V

    .line 1027
    .line 1028
    .line 1029
    goto :goto_b

    .line 1030
    :cond_18
    move/from16 v19, v28

    .line 1031
    .line 1032
    :goto_b
    invoke-virtual {v6}, Ls35;->m()Ljava/lang/String;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v2

    .line 1036
    invoke-static {v2}, Lac5;->u0(Ljava/lang/String;)Z

    .line 1037
    .line 1038
    .line 1039
    move-result v2

    .line 1040
    if-eqz v2, :cond_1f

    .line 1041
    .line 1042
    if-eqz v35, :cond_1f

    .line 1043
    .line 1044
    invoke-virtual {v1}, Lpb5;->g0()Lat4;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v36

    .line 1048
    invoke-virtual {v1}, Lpb5;->g()J

    .line 1049
    .line 1050
    .line 1051
    move-result-wide v37

    .line 1052
    iget-object v2, v9, Lq41;->o:Ljava/lang/Object;

    .line 1053
    .line 1054
    check-cast v2, Lu45;

    .line 1055
    .line 1056
    invoke-virtual {v2}, Lu45;->t()Ljava/lang/String;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v39

    .line 1060
    const/16 v42, 0x0

    .line 1061
    .line 1062
    const/16 v43, 0x0

    .line 1063
    .line 1064
    const/16 v40, 0x1

    .line 1065
    .line 1066
    const/16 v41, 0x0

    .line 1067
    .line 1068
    invoke-virtual/range {v36 .. v43}, Lat4;->B0(JLjava/lang/String;ZZZZ)Lrs4;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v2

    .line 1072
    iget-wide v2, v2, Lrs4;->c:J

    .line 1073
    .line 1074
    invoke-virtual {v1}, Lpb5;->e0()Lds4;

    .line 1075
    .line 1076
    .line 1077
    move-result-object v4

    .line 1078
    iget-object v10, v9, Lq41;->o:Ljava/lang/Object;

    .line 1079
    .line 1080
    check-cast v10, Lu45;

    .line 1081
    .line 1082
    invoke-virtual {v10}, Lu45;->t()Ljava/lang/String;

    .line 1083
    .line 1084
    .line 1085
    move-result-object v10

    .line 1086
    sget-object v11, Le05;->o:Ld05;

    .line 1087
    .line 1088
    invoke-virtual {v4, v10, v11}, Lds4;->E(Ljava/lang/String;Ld05;)I

    .line 1089
    .line 1090
    .line 1091
    move-result v4

    .line 1092
    int-to-long v10, v4

    .line 1093
    cmp-long v2, v2, v10

    .line 1094
    .line 1095
    if-lez v2, :cond_1f

    .line 1096
    .line 1097
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 1098
    .line 1099
    .line 1100
    move-result-object v2

    .line 1101
    invoke-virtual {v2}, La25;->A()Lx15;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v2

    .line 1105
    const-string v3, "Too many conversions. Not logging as conversion. appId"

    .line 1106
    .line 1107
    iget-object v4, v9, Lq41;->o:Ljava/lang/Object;

    .line 1108
    .line 1109
    check-cast v4, Lu45;

    .line 1110
    .line 1111
    invoke-virtual {v4}, Lu45;->t()Ljava/lang/String;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v4

    .line 1115
    invoke-static {v4}, La25;->D(Ljava/lang/String;)Ly15;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v4

    .line 1119
    invoke-virtual {v2, v4, v3}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1120
    .line 1121
    .line 1122
    const/4 v2, 0x0

    .line 1123
    const/4 v3, 0x0

    .line 1124
    const/4 v4, 0x0

    .line 1125
    const/4 v10, -0x1

    .line 1126
    :goto_c
    invoke-virtual {v6}, Ls35;->h()I

    .line 1127
    .line 1128
    .line 1129
    move-result v11

    .line 1130
    if-ge v2, v11, :cond_1b

    .line 1131
    .line 1132
    invoke-virtual {v6, v2}, Ls35;->i(I)Lc45;

    .line 1133
    .line 1134
    .line 1135
    move-result-object v11

    .line 1136
    invoke-virtual {v11}, Lc45;->u()Ljava/lang/String;

    .line 1137
    .line 1138
    .line 1139
    move-result-object v12

    .line 1140
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1141
    .line 1142
    .line 1143
    move-result v12

    .line 1144
    if-eqz v12, :cond_19

    .line 1145
    .line 1146
    invoke-virtual {v11}, Lrn4;->k()Lpn4;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v4

    .line 1150
    check-cast v4, La45;

    .line 1151
    .line 1152
    move v10, v2

    .line 1153
    goto :goto_d

    .line 1154
    :cond_19
    invoke-virtual {v11}, Lc45;->u()Ljava/lang/String;

    .line 1155
    .line 1156
    .line 1157
    move-result-object v11

    .line 1158
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1159
    .line 1160
    .line 1161
    move-result v11

    .line 1162
    if-eqz v11, :cond_1a

    .line 1163
    .line 1164
    move/from16 v3, v28

    .line 1165
    .line 1166
    :cond_1a
    :goto_d
    add-int/lit8 v2, v2, 0x1

    .line 1167
    .line 1168
    goto :goto_c

    .line 1169
    :cond_1b
    if-eqz v3, :cond_1d

    .line 1170
    .line 1171
    if-eqz v4, :cond_1c

    .line 1172
    .line 1173
    invoke-virtual {v6, v10}, Ls35;->l(I)V

    .line 1174
    .line 1175
    .line 1176
    goto :goto_e

    .line 1177
    :cond_1c
    const/4 v4, 0x0

    .line 1178
    :cond_1d
    if-eqz v4, :cond_1e

    .line 1179
    .line 1180
    invoke-virtual {v4}, Lpn4;->c()Lpn4;

    .line 1181
    .line 1182
    .line 1183
    move-result-object v2

    .line 1184
    check-cast v2, La45;

    .line 1185
    .line 1186
    invoke-virtual {v2, v8}, La45;->g(Ljava/lang/String;)V

    .line 1187
    .line 1188
    .line 1189
    const-wide/16 v3, 0xa

    .line 1190
    .line 1191
    invoke-virtual {v2, v3, v4}, La45;->i(J)V

    .line 1192
    .line 1193
    .line 1194
    invoke-virtual {v2}, Lpn4;->d()Lrn4;

    .line 1195
    .line 1196
    .line 1197
    move-result-object v2

    .line 1198
    check-cast v2, Lc45;

    .line 1199
    .line 1200
    invoke-virtual {v6}, Lpn4;->b()V

    .line 1201
    .line 1202
    .line 1203
    iget-object v3, v6, Lpn4;->o:Lrn4;

    .line 1204
    .line 1205
    check-cast v3, Lu35;

    .line 1206
    .line 1207
    invoke-virtual {v3, v10, v2}, Lu35;->K(ILc45;)V

    .line 1208
    .line 1209
    .line 1210
    goto :goto_e

    .line 1211
    :cond_1e
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v2

    .line 1215
    invoke-virtual {v2}, La25;->z()Lx15;

    .line 1216
    .line 1217
    .line 1218
    move-result-object v2

    .line 1219
    const-string v3, "Did not find conversion parameter. appId"

    .line 1220
    .line 1221
    iget-object v4, v9, Lq41;->o:Ljava/lang/Object;

    .line 1222
    .line 1223
    check-cast v4, Lu45;

    .line 1224
    .line 1225
    invoke-virtual {v4}, Lu45;->t()Ljava/lang/String;

    .line 1226
    .line 1227
    .line 1228
    move-result-object v4

    .line 1229
    invoke-static {v4}, La25;->D(Ljava/lang/String;)Ly15;

    .line 1230
    .line 1231
    .line 1232
    move-result-object v4

    .line 1233
    invoke-virtual {v2, v4, v3}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1234
    .line 1235
    .line 1236
    :cond_1f
    :goto_e
    if-eqz v35, :cond_20

    .line 1237
    .line 1238
    invoke-virtual {v1, v6}, Lpb5;->y(Ls35;)Z

    .line 1239
    .line 1240
    .line 1241
    :cond_20
    invoke-virtual {v6}, Ls35;->m()Ljava/lang/String;

    .line 1242
    .line 1243
    .line 1244
    move-result-object v2

    .line 1245
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1246
    .line 1247
    .line 1248
    move-result v2

    .line 1249
    const-wide/16 v3, 0x3e8

    .line 1250
    .line 1251
    if-eqz v2, :cond_24

    .line 1252
    .line 1253
    invoke-virtual {v1}, Lpb5;->j0()Lub5;

    .line 1254
    .line 1255
    .line 1256
    invoke-virtual {v6}, Lpn4;->d()Lrn4;

    .line 1257
    .line 1258
    .line 1259
    move-result-object v2

    .line 1260
    check-cast v2, Lu35;

    .line 1261
    .line 1262
    invoke-static {v13, v2}, Lub5;->F(Ljava/lang/String;Lu35;)Lc45;

    .line 1263
    .line 1264
    .line 1265
    move-result-object v2

    .line 1266
    if-nez v2, :cond_22

    .line 1267
    .line 1268
    if-eqz v18, :cond_21

    .line 1269
    .line 1270
    invoke-virtual/range {v18 .. v18}, Ls35;->o()J

    .line 1271
    .line 1272
    .line 1273
    move-result-wide v10

    .line 1274
    invoke-virtual {v6}, Ls35;->o()J

    .line 1275
    .line 1276
    .line 1277
    move-result-wide v12

    .line 1278
    sub-long/2addr v10, v12

    .line 1279
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    .line 1280
    .line 1281
    .line 1282
    move-result-wide v10

    .line 1283
    cmp-long v2, v10, v3

    .line 1284
    .line 1285
    if-gtz v2, :cond_21

    .line 1286
    .line 1287
    invoke-virtual/range {v18 .. v18}, Lpn4;->c()Lpn4;

    .line 1288
    .line 1289
    .line 1290
    move-result-object v2

    .line 1291
    check-cast v2, Ls35;

    .line 1292
    .line 1293
    invoke-virtual {v1, v6, v2}, Lpb5;->K(Ls35;Ls35;)Z

    .line 1294
    .line 1295
    .line 1296
    move-result v3

    .line 1297
    if-eqz v3, :cond_21

    .line 1298
    .line 1299
    move-object/from16 v10, v33

    .line 1300
    .line 1301
    move/from16 v12, v34

    .line 1302
    .line 1303
    invoke-virtual {v10, v12, v2}, Lq45;->V(ILs35;)V

    .line 1304
    .line 1305
    .line 1306
    move v11, v12

    .line 1307
    move/from16 v12, v32

    .line 1308
    .line 1309
    const/16 v17, 0x0

    .line 1310
    .line 1311
    const/16 v18, 0x0

    .line 1312
    .line 1313
    goto/16 :goto_12

    .line 1314
    .line 1315
    :cond_21
    move-object/from16 v10, v33

    .line 1316
    .line 1317
    move/from16 v12, v34

    .line 1318
    .line 1319
    move-object/from16 v17, v6

    .line 1320
    .line 1321
    move v11, v12

    .line 1322
    move/from16 v12, v22

    .line 1323
    .line 1324
    goto/16 :goto_12

    .line 1325
    .line 1326
    :cond_22
    move-object/from16 v10, v33

    .line 1327
    .line 1328
    move/from16 v12, v34

    .line 1329
    .line 1330
    :cond_23
    move/from16 v3, v32

    .line 1331
    .line 1332
    goto/16 :goto_11

    .line 1333
    .line 1334
    :cond_24
    move-object/from16 v10, v33

    .line 1335
    .line 1336
    move/from16 v12, v34

    .line 1337
    .line 1338
    const-string v2, "_vs"

    .line 1339
    .line 1340
    invoke-virtual {v6}, Ls35;->m()Ljava/lang/String;

    .line 1341
    .line 1342
    .line 1343
    move-result-object v8

    .line 1344
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1345
    .line 1346
    .line 1347
    move-result v2

    .line 1348
    if-eqz v2, :cond_26

    .line 1349
    .line 1350
    invoke-virtual {v1}, Lpb5;->j0()Lub5;

    .line 1351
    .line 1352
    .line 1353
    invoke-virtual {v6}, Lpn4;->d()Lrn4;

    .line 1354
    .line 1355
    .line 1356
    move-result-object v2

    .line 1357
    check-cast v2, Lu35;

    .line 1358
    .line 1359
    move-object/from16 v8, v24

    .line 1360
    .line 1361
    invoke-static {v8, v2}, Lub5;->F(Ljava/lang/String;Lu35;)Lc45;

    .line 1362
    .line 1363
    .line 1364
    move-result-object v2

    .line 1365
    if-nez v2, :cond_23

    .line 1366
    .line 1367
    if-eqz v17, :cond_25

    .line 1368
    .line 1369
    invoke-virtual/range {v17 .. v17}, Ls35;->o()J

    .line 1370
    .line 1371
    .line 1372
    move-result-wide v13

    .line 1373
    invoke-virtual {v6}, Ls35;->o()J

    .line 1374
    .line 1375
    .line 1376
    move-result-wide v24

    .line 1377
    sub-long v13, v13, v24

    .line 1378
    .line 1379
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    .line 1380
    .line 1381
    .line 1382
    move-result-wide v13

    .line 1383
    cmp-long v2, v13, v3

    .line 1384
    .line 1385
    if-gtz v2, :cond_25

    .line 1386
    .line 1387
    invoke-virtual/range {v17 .. v17}, Lpn4;->c()Lpn4;

    .line 1388
    .line 1389
    .line 1390
    move-result-object v2

    .line 1391
    check-cast v2, Ls35;

    .line 1392
    .line 1393
    invoke-virtual {v1, v2, v6}, Lpb5;->K(Ls35;Ls35;)Z

    .line 1394
    .line 1395
    .line 1396
    move-result v3

    .line 1397
    if-eqz v3, :cond_25

    .line 1398
    .line 1399
    move/from16 v3, v32

    .line 1400
    .line 1401
    invoke-virtual {v10, v3, v2}, Lq45;->V(ILs35;)V

    .line 1402
    .line 1403
    .line 1404
    move v11, v12

    .line 1405
    const/16 v17, 0x0

    .line 1406
    .line 1407
    const/16 v18, 0x0

    .line 1408
    .line 1409
    :goto_f
    move v12, v3

    .line 1410
    goto :goto_12

    .line 1411
    :cond_25
    move/from16 v3, v32

    .line 1412
    .line 1413
    move v12, v3

    .line 1414
    move-object/from16 v18, v6

    .line 1415
    .line 1416
    move/from16 v11, v22

    .line 1417
    .line 1418
    goto :goto_12

    .line 1419
    :cond_26
    move/from16 v3, v32

    .line 1420
    .line 1421
    invoke-virtual {v6}, Ls35;->m()Ljava/lang/String;

    .line 1422
    .line 1423
    .line 1424
    move-result-object v2

    .line 1425
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1426
    .line 1427
    .line 1428
    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1429
    const-string v4, "_v"

    .line 1430
    .line 1431
    if-nez v2, :cond_27

    .line 1432
    .line 1433
    :try_start_8
    invoke-virtual {v6}, Ls35;->m()Ljava/lang/String;

    .line 1434
    .line 1435
    .line 1436
    move-result-object v2

    .line 1437
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1438
    .line 1439
    .line 1440
    move-result v2

    .line 1441
    if-eqz v2, :cond_2a

    .line 1442
    .line 1443
    :cond_27
    invoke-virtual {v6}, Ls35;->m()Ljava/lang/String;

    .line 1444
    .line 1445
    .line 1446
    move-result-object v2

    .line 1447
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1448
    .line 1449
    .line 1450
    move-result v2

    .line 1451
    if-nez v2, :cond_28

    .line 1452
    .line 1453
    invoke-virtual {v6}, Ls35;->m()Ljava/lang/String;

    .line 1454
    .line 1455
    .line 1456
    move-result-object v2

    .line 1457
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1458
    .line 1459
    .line 1460
    move-result v2

    .line 1461
    if-eqz v2, :cond_2a

    .line 1462
    .line 1463
    :cond_28
    const/4 v2, 0x0

    .line 1464
    :goto_10
    invoke-virtual {v6}, Ls35;->h()I

    .line 1465
    .line 1466
    .line 1467
    move-result v4

    .line 1468
    if-ge v2, v4, :cond_2a

    .line 1469
    .line 1470
    invoke-virtual {v6, v2}, Ls35;->i(I)Lc45;

    .line 1471
    .line 1472
    .line 1473
    move-result-object v4

    .line 1474
    const-string v8, "_elt"

    .line 1475
    .line 1476
    invoke-virtual {v4}, Lc45;->u()Ljava/lang/String;

    .line 1477
    .line 1478
    .line 1479
    move-result-object v11

    .line 1480
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1481
    .line 1482
    .line 1483
    move-result v8

    .line 1484
    if-eqz v8, :cond_29

    .line 1485
    .line 1486
    invoke-virtual {v4}, Lc45;->y()J

    .line 1487
    .line 1488
    .line 1489
    move-result-wide v13

    .line 1490
    invoke-virtual {v6, v13, v14}, Ls35;->q(J)V

    .line 1491
    .line 1492
    .line 1493
    invoke-virtual {v6, v2}, Ls35;->l(I)V

    .line 1494
    .line 1495
    .line 1496
    goto :goto_11

    .line 1497
    :cond_29
    add-int/lit8 v2, v2, 0x1

    .line 1498
    .line 1499
    goto :goto_10

    .line 1500
    :cond_2a
    :goto_11
    move v11, v12

    .line 1501
    goto :goto_f

    .line 1502
    :goto_12
    invoke-virtual {v1}, Lpb5;->e0()Lds4;

    .line 1503
    .line 1504
    .line 1505
    move-result-object v2

    .line 1506
    sget-object v3, Le05;->e1:Ld05;

    .line 1507
    .line 1508
    const/4 v4, 0x0

    .line 1509
    invoke-virtual {v2, v4, v3}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 1510
    .line 1511
    .line 1512
    move-result v2

    .line 1513
    if-eqz v2, :cond_2c

    .line 1514
    .line 1515
    invoke-virtual {v6}, Ls35;->t()Z

    .line 1516
    .line 1517
    .line 1518
    move-result v2

    .line 1519
    if-eqz v2, :cond_2c

    .line 1520
    .line 1521
    invoke-virtual {v6}, Ls35;->r()Z

    .line 1522
    .line 1523
    .line 1524
    move-result v2

    .line 1525
    if-nez v2, :cond_2c

    .line 1526
    .line 1527
    invoke-virtual {v1}, Lpb5;->j0()Lub5;

    .line 1528
    .line 1529
    .line 1530
    move-result-object v2

    .line 1531
    invoke-virtual {v6}, Ls35;->u()J

    .line 1532
    .line 1533
    .line 1534
    move-result-wide v3

    .line 1535
    invoke-virtual {v2, v3, v4}, Lub5;->C(J)J

    .line 1536
    .line 1537
    .line 1538
    move-result-wide v2

    .line 1539
    cmp-long v4, v2, v26

    .line 1540
    .line 1541
    if-eqz v4, :cond_2b

    .line 1542
    .line 1543
    invoke-virtual {v6, v2, v3}, Ls35;->s(J)V

    .line 1544
    .line 1545
    .line 1546
    :cond_2b
    invoke-virtual {v6}, Lpn4;->b()V

    .line 1547
    .line 1548
    .line 1549
    iget-object v2, v6, Lpn4;->o:Lrn4;

    .line 1550
    .line 1551
    check-cast v2, Lu35;

    .line 1552
    .line 1553
    move-wide/from16 v3, v26

    .line 1554
    .line 1555
    invoke-virtual {v2, v3, v4}, Lu35;->t(J)V

    .line 1556
    .line 1557
    .line 1558
    :cond_2c
    invoke-virtual {v6}, Ls35;->h()I

    .line 1559
    .line 1560
    .line 1561
    move-result v2

    .line 1562
    if-eqz v2, :cond_34

    .line 1563
    .line 1564
    invoke-virtual {v1}, Lpb5;->j0()Lub5;

    .line 1565
    .line 1566
    .line 1567
    invoke-virtual {v6}, Ls35;->g()Ljava/util/List;

    .line 1568
    .line 1569
    .line 1570
    move-result-object v2

    .line 1571
    invoke-static {v2}, Lub5;->E(Ljava/util/List;)Landroid/os/Bundle;

    .line 1572
    .line 1573
    .line 1574
    move-result-object v2

    .line 1575
    const/4 v3, 0x0

    .line 1576
    :goto_13
    invoke-virtual {v6}, Ls35;->h()I

    .line 1577
    .line 1578
    .line 1579
    move-result v4

    .line 1580
    if-ge v3, v4, :cond_31

    .line 1581
    .line 1582
    invoke-virtual {v6, v3}, Ls35;->i(I)Lc45;

    .line 1583
    .line 1584
    .line 1585
    move-result-object v4

    .line 1586
    invoke-virtual {v4}, Lc45;->u()Ljava/lang/String;

    .line 1587
    .line 1588
    .line 1589
    move-result-object v8

    .line 1590
    move-object/from16 v13, v30

    .line 1591
    .line 1592
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1593
    .line 1594
    .line 1595
    move-result v8

    .line 1596
    if-eqz v8, :cond_2f

    .line 1597
    .line 1598
    invoke-virtual {v4}, Lc45;->D()Ldo4;

    .line 1599
    .line 1600
    .line 1601
    move-result-object v8

    .line 1602
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 1603
    .line 1604
    .line 1605
    move-result v8

    .line 1606
    if-nez v8, :cond_2f

    .line 1607
    .line 1608
    iget-object v8, v9, Lq41;->o:Ljava/lang/Object;

    .line 1609
    .line 1610
    check-cast v8, Lu45;

    .line 1611
    .line 1612
    invoke-virtual {v8}, Lu45;->t()Ljava/lang/String;

    .line 1613
    .line 1614
    .line 1615
    move-result-object v8

    .line 1616
    invoke-virtual {v4}, Lc45;->D()Ldo4;

    .line 1617
    .line 1618
    .line 1619
    move-result-object v4

    .line 1620
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 1621
    .line 1622
    .line 1623
    move-result v14

    .line 1624
    new-array v14, v14, [Landroid/os/Bundle;

    .line 1625
    .line 1626
    move/from16 v24, v3

    .line 1627
    .line 1628
    const/4 v15, 0x0

    .line 1629
    :goto_14
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 1630
    .line 1631
    .line 1632
    move-result v3

    .line 1633
    if-ge v15, v3, :cond_2e

    .line 1634
    .line 1635
    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1636
    .line 1637
    .line 1638
    move-result-object v3

    .line 1639
    check-cast v3, Lc45;

    .line 1640
    .line 1641
    invoke-virtual {v1}, Lpb5;->j0()Lub5;

    .line 1642
    .line 1643
    .line 1644
    invoke-virtual {v3}, Lc45;->D()Ldo4;

    .line 1645
    .line 1646
    .line 1647
    move-result-object v25

    .line 1648
    move-object/from16 v26, v3

    .line 1649
    .line 1650
    invoke-static/range {v25 .. v25}, Lub5;->E(Ljava/util/List;)Landroid/os/Bundle;

    .line 1651
    .line 1652
    .line 1653
    move-result-object v3

    .line 1654
    invoke-virtual/range {v26 .. v26}, Lc45;->D()Ldo4;

    .line 1655
    .line 1656
    .line 1657
    move-result-object v25

    .line 1658
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1659
    .line 1660
    .line 1661
    move-result-object v25

    .line 1662
    :goto_15
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    .line 1663
    .line 1664
    .line 1665
    move-result v26

    .line 1666
    if-eqz v26, :cond_2d

    .line 1667
    .line 1668
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1669
    .line 1670
    .line 1671
    move-result-object v26

    .line 1672
    check-cast v26, Lc45;

    .line 1673
    .line 1674
    move-object/from16 v27, v4

    .line 1675
    .line 1676
    invoke-virtual {v6}, Ls35;->m()Ljava/lang/String;

    .line 1677
    .line 1678
    .line 1679
    move-result-object v4

    .line 1680
    invoke-virtual/range {v26 .. v26}, Lrn4;->k()Lpn4;

    .line 1681
    .line 1682
    .line 1683
    move-result-object v26

    .line 1684
    move-object/from16 v30, v5

    .line 1685
    .line 1686
    move-object/from16 v5, v26

    .line 1687
    .line 1688
    check-cast v5, La45;

    .line 1689
    .line 1690
    invoke-virtual {v1, v4, v5, v3, v8}, Lpb5;->x(Ljava/lang/String;La45;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1691
    .line 1692
    .line 1693
    move-object/from16 v4, v27

    .line 1694
    .line 1695
    move-object/from16 v5, v30

    .line 1696
    .line 1697
    goto :goto_15

    .line 1698
    :cond_2d
    move-object/from16 v27, v4

    .line 1699
    .line 1700
    move-object/from16 v30, v5

    .line 1701
    .line 1702
    aput-object v3, v14, v15

    .line 1703
    .line 1704
    add-int/lit8 v15, v15, 0x1

    .line 1705
    .line 1706
    move-object/from16 v4, v27

    .line 1707
    .line 1708
    move-object/from16 v5, v30

    .line 1709
    .line 1710
    goto :goto_14

    .line 1711
    :cond_2e
    move-object/from16 v30, v5

    .line 1712
    .line 1713
    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 1714
    .line 1715
    .line 1716
    goto :goto_16

    .line 1717
    :cond_2f
    move/from16 v24, v3

    .line 1718
    .line 1719
    move-object/from16 v30, v5

    .line 1720
    .line 1721
    invoke-virtual {v4}, Lc45;->u()Ljava/lang/String;

    .line 1722
    .line 1723
    .line 1724
    move-result-object v3

    .line 1725
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1726
    .line 1727
    .line 1728
    move-result v3

    .line 1729
    if-nez v3, :cond_30

    .line 1730
    .line 1731
    invoke-virtual {v6}, Ls35;->m()Ljava/lang/String;

    .line 1732
    .line 1733
    .line 1734
    move-result-object v3

    .line 1735
    invoke-virtual {v4}, Lrn4;->k()Lpn4;

    .line 1736
    .line 1737
    .line 1738
    move-result-object v4

    .line 1739
    check-cast v4, La45;

    .line 1740
    .line 1741
    iget-object v5, v9, Lq41;->o:Ljava/lang/Object;

    .line 1742
    .line 1743
    check-cast v5, Lu45;

    .line 1744
    .line 1745
    invoke-virtual {v5}, Lu45;->t()Ljava/lang/String;

    .line 1746
    .line 1747
    .line 1748
    move-result-object v5

    .line 1749
    invoke-virtual {v1, v3, v4, v2, v5}, Lpb5;->x(Ljava/lang/String;La45;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1750
    .line 1751
    .line 1752
    :cond_30
    :goto_16
    add-int/lit8 v3, v24, 0x1

    .line 1753
    .line 1754
    move-object/from16 v5, v30

    .line 1755
    .line 1756
    move-object/from16 v30, v13

    .line 1757
    .line 1758
    goto/16 :goto_13

    .line 1759
    .line 1760
    :cond_31
    move-object/from16 v13, v30

    .line 1761
    .line 1762
    move-object/from16 v30, v5

    .line 1763
    .line 1764
    invoke-virtual {v6}, Lpn4;->b()V

    .line 1765
    .line 1766
    .line 1767
    iget-object v3, v6, Lpn4;->o:Lrn4;

    .line 1768
    .line 1769
    check-cast v3, Lu35;

    .line 1770
    .line 1771
    invoke-virtual {v3}, Lu35;->N()V

    .line 1772
    .line 1773
    .line 1774
    invoke-virtual {v1}, Lpb5;->j0()Lub5;

    .line 1775
    .line 1776
    .line 1777
    move-result-object v3

    .line 1778
    new-instance v4, Ljava/util/ArrayList;

    .line 1779
    .line 1780
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1781
    .line 1782
    .line 1783
    invoke-virtual {v2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 1784
    .line 1785
    .line 1786
    move-result-object v5

    .line 1787
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1788
    .line 1789
    .line 1790
    move-result-object v5

    .line 1791
    :cond_32
    :goto_17
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1792
    .line 1793
    .line 1794
    move-result v8

    .line 1795
    if-eqz v8, :cond_33

    .line 1796
    .line 1797
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1798
    .line 1799
    .line 1800
    move-result-object v8

    .line 1801
    check-cast v8, Ljava/lang/String;

    .line 1802
    .line 1803
    invoke-static {}, Lc45;->F()La45;

    .line 1804
    .line 1805
    .line 1806
    move-result-object v14

    .line 1807
    invoke-virtual {v14, v8}, La45;->g(Ljava/lang/String;)V

    .line 1808
    .line 1809
    .line 1810
    invoke-virtual {v2, v8}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 1811
    .line 1812
    .line 1813
    move-result-object v8

    .line 1814
    if-eqz v8, :cond_32

    .line 1815
    .line 1816
    invoke-virtual {v3, v14, v8}, Lub5;->T(La45;Ljava/lang/Object;)V

    .line 1817
    .line 1818
    .line 1819
    invoke-virtual {v14}, Lpn4;->d()Lrn4;

    .line 1820
    .line 1821
    .line 1822
    move-result-object v8

    .line 1823
    check-cast v8, Lc45;

    .line 1824
    .line 1825
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1826
    .line 1827
    .line 1828
    goto :goto_17

    .line 1829
    :cond_33
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 1830
    .line 1831
    .line 1832
    move-result v2

    .line 1833
    const/4 v3, 0x0

    .line 1834
    :goto_18
    if-ge v3, v2, :cond_35

    .line 1835
    .line 1836
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1837
    .line 1838
    .line 1839
    move-result-object v5

    .line 1840
    add-int/lit8 v3, v3, 0x1

    .line 1841
    .line 1842
    check-cast v5, Lc45;

    .line 1843
    .line 1844
    invoke-virtual {v6, v5}, Ls35;->j(Lc45;)V

    .line 1845
    .line 1846
    .line 1847
    goto :goto_18

    .line 1848
    :cond_34
    move-object/from16 v13, v30

    .line 1849
    .line 1850
    move-object/from16 v30, v5

    .line 1851
    .line 1852
    :cond_35
    iget-object v2, v9, Lq41;->q:Ljava/io/Serializable;

    .line 1853
    .line 1854
    check-cast v2, Ljava/util/ArrayList;

    .line 1855
    .line 1856
    invoke-virtual {v6}, Lpn4;->d()Lrn4;

    .line 1857
    .line 1858
    .line 1859
    move-result-object v3

    .line 1860
    check-cast v3, Lu35;

    .line 1861
    .line 1862
    move/from16 v4, v29

    .line 1863
    .line 1864
    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1865
    .line 1866
    .line 1867
    invoke-virtual {v10, v6}, Lq45;->W(Ls35;)V

    .line 1868
    .line 1869
    .line 1870
    add-int/lit8 v15, v22, 0x1

    .line 1871
    .line 1872
    :goto_19
    add-int/lit8 v14, v4, 0x1

    .line 1873
    .line 1874
    move-object v4, v7

    .line 1875
    move-object v5, v13

    .line 1876
    move-object/from16 v8, v23

    .line 1877
    .line 1878
    move-object/from16 v3, v30

    .line 1879
    .line 1880
    move-object/from16 v2, v31

    .line 1881
    .line 1882
    goto/16 :goto_0

    .line 1883
    .line 1884
    :cond_36
    move-object/from16 v8, v24

    .line 1885
    .line 1886
    const/16 v28, 0x1

    .line 1887
    .line 1888
    move/from16 v2, v22

    .line 1889
    .line 1890
    const/4 v0, 0x0

    .line 1891
    const-wide/16 v3, 0x0

    .line 1892
    .line 1893
    :goto_1a
    if-ge v0, v2, :cond_3a

    .line 1894
    .line 1895
    iget-object v5, v10, Lpn4;->o:Lrn4;

    .line 1896
    .line 1897
    check-cast v5, Lu45;

    .line 1898
    .line 1899
    invoke-virtual {v5, v0}, Lu45;->Y1(I)Lu35;

    .line 1900
    .line 1901
    .line 1902
    move-result-object v5

    .line 1903
    invoke-virtual {v5}, Lu35;->y()Ljava/lang/String;

    .line 1904
    .line 1905
    .line 1906
    move-result-object v6

    .line 1907
    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1908
    .line 1909
    .line 1910
    move-result v6

    .line 1911
    if-eqz v6, :cond_37

    .line 1912
    .line 1913
    invoke-virtual {v1}, Lpb5;->j0()Lub5;

    .line 1914
    .line 1915
    .line 1916
    invoke-static {v13, v5}, Lub5;->F(Ljava/lang/String;Lu35;)Lc45;

    .line 1917
    .line 1918
    .line 1919
    move-result-object v6

    .line 1920
    if-eqz v6, :cond_37

    .line 1921
    .line 1922
    invoke-virtual {v10, v0}, Lq45;->X(I)V

    .line 1923
    .line 1924
    .line 1925
    add-int/lit8 v2, v2, -0x1

    .line 1926
    .line 1927
    add-int/lit8 v0, v0, -0x1

    .line 1928
    .line 1929
    goto :goto_1c

    .line 1930
    :cond_37
    invoke-virtual {v1}, Lpb5;->j0()Lub5;

    .line 1931
    .line 1932
    .line 1933
    invoke-static {v8, v5}, Lub5;->F(Ljava/lang/String;Lu35;)Lc45;

    .line 1934
    .line 1935
    .line 1936
    move-result-object v5

    .line 1937
    if-eqz v5, :cond_39

    .line 1938
    .line 1939
    invoke-virtual {v5}, Lc45;->x()Z

    .line 1940
    .line 1941
    .line 1942
    move-result v6

    .line 1943
    if-eqz v6, :cond_38

    .line 1944
    .line 1945
    invoke-virtual {v5}, Lc45;->y()J

    .line 1946
    .line 1947
    .line 1948
    move-result-wide v5

    .line 1949
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1950
    .line 1951
    .line 1952
    move-result-object v5

    .line 1953
    goto :goto_1b

    .line 1954
    :cond_38
    const/4 v5, 0x0

    .line 1955
    :goto_1b
    if-eqz v5, :cond_39

    .line 1956
    .line 1957
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 1958
    .line 1959
    .line 1960
    move-result-wide v6

    .line 1961
    const-wide/16 v26, 0x0

    .line 1962
    .line 1963
    cmp-long v6, v6, v26

    .line 1964
    .line 1965
    if-lez v6, :cond_39

    .line 1966
    .line 1967
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 1968
    .line 1969
    .line 1970
    move-result-wide v5

    .line 1971
    add-long/2addr v3, v5

    .line 1972
    :cond_39
    :goto_1c
    add-int/lit8 v0, v0, 0x1

    .line 1973
    .line 1974
    goto :goto_1a

    .line 1975
    :cond_3a
    const/4 v2, 0x0

    .line 1976
    invoke-virtual {v1, v10, v3, v4, v2}, Lpb5;->J(Lq45;JZ)V

    .line 1977
    .line 1978
    .line 1979
    invoke-virtual {v10}, Lq45;->T()Ljava/util/List;

    .line 1980
    .line 1981
    .line 1982
    move-result-object v0

    .line 1983
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1984
    .line 1985
    .line 1986
    move-result-object v0

    .line 1987
    :cond_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1988
    .line 1989
    .line 1990
    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1991
    const-string v5, "_se"

    .line 1992
    .line 1993
    if-eqz v2, :cond_3c

    .line 1994
    .line 1995
    :try_start_9
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1996
    .line 1997
    .line 1998
    move-result-object v2

    .line 1999
    check-cast v2, Lu35;

    .line 2000
    .line 2001
    const-string v6, "_s"

    .line 2002
    .line 2003
    invoke-virtual {v2}, Lu35;->y()Ljava/lang/String;

    .line 2004
    .line 2005
    .line 2006
    move-result-object v2

    .line 2007
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2008
    .line 2009
    .line 2010
    move-result v2

    .line 2011
    if-eqz v2, :cond_3b

    .line 2012
    .line 2013
    invoke-virtual {v1}, Lpb5;->g0()Lat4;

    .line 2014
    .line 2015
    .line 2016
    move-result-object v0

    .line 2017
    invoke-virtual {v10}, Lq45;->n()Ljava/lang/String;

    .line 2018
    .line 2019
    .line 2020
    move-result-object v2

    .line 2021
    invoke-virtual {v0, v2, v5}, Lat4;->p0(Ljava/lang/String;Ljava/lang/String;)V

    .line 2022
    .line 2023
    .line 2024
    :cond_3c
    const-string v0, "_sid"

    .line 2025
    .line 2026
    invoke-static {v0, v10}, Lub5;->h0(Ljava/lang/String;Lq45;)I

    .line 2027
    .line 2028
    .line 2029
    move-result v0

    .line 2030
    if-ltz v0, :cond_3d

    .line 2031
    .line 2032
    move/from16 v2, v28

    .line 2033
    .line 2034
    invoke-virtual {v1, v10, v3, v4, v2}, Lpb5;->J(Lq45;JZ)V

    .line 2035
    .line 2036
    .line 2037
    goto :goto_1d

    .line 2038
    :cond_3d
    invoke-static {v5, v10}, Lub5;->h0(Ljava/lang/String;Lq45;)I

    .line 2039
    .line 2040
    .line 2041
    move-result v0

    .line 2042
    if-ltz v0, :cond_3e

    .line 2043
    .line 2044
    invoke-virtual {v10}, Lpn4;->b()V

    .line 2045
    .line 2046
    .line 2047
    iget-object v2, v10, Lpn4;->o:Lrn4;

    .line 2048
    .line 2049
    check-cast v2, Lu45;

    .line 2050
    .line 2051
    invoke-virtual {v2, v0}, Lu45;->i0(I)V

    .line 2052
    .line 2053
    .line 2054
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 2055
    .line 2056
    .line 2057
    move-result-object v0

    .line 2058
    invoke-virtual {v0}, La25;->z()Lx15;

    .line 2059
    .line 2060
    .line 2061
    move-result-object v0

    .line 2062
    const-string v2, "Session engagement user property is in the bundle without session ID. appId"

    .line 2063
    .line 2064
    iget-object v3, v9, Lq41;->o:Ljava/lang/Object;

    .line 2065
    .line 2066
    check-cast v3, Lu45;

    .line 2067
    .line 2068
    invoke-virtual {v3}, Lu45;->t()Ljava/lang/String;

    .line 2069
    .line 2070
    .line 2071
    move-result-object v3

    .line 2072
    invoke-static {v3}, La25;->D(Ljava/lang/String;)Ly15;

    .line 2073
    .line 2074
    .line 2075
    move-result-object v3

    .line 2076
    invoke-virtual {v0, v3, v2}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2077
    .line 2078
    .line 2079
    :cond_3e
    :goto_1d
    iget-object v0, v9, Lq41;->o:Ljava/lang/Object;

    .line 2080
    .line 2081
    check-cast v0, Lu45;

    .line 2082
    .line 2083
    invoke-virtual {v0}, Lu45;->t()Ljava/lang/String;

    .line 2084
    .line 2085
    .line 2086
    move-result-object v0

    .line 2087
    invoke-virtual {v1}, Lpb5;->d()Lj45;

    .line 2088
    .line 2089
    .line 2090
    move-result-object v2

    .line 2091
    invoke-virtual {v2}, Lj45;->v()V

    .line 2092
    .line 2093
    .line 2094
    invoke-virtual {v1}, Lpb5;->l0()V

    .line 2095
    .line 2096
    .line 2097
    invoke-virtual {v1}, Lpb5;->g0()Lat4;

    .line 2098
    .line 2099
    .line 2100
    move-result-object v2

    .line 2101
    invoke-virtual {v2, v0}, Lat4;->z0(Ljava/lang/String;)Lm25;

    .line 2102
    .line 2103
    .line 2104
    move-result-object v2

    .line 2105
    if-nez v2, :cond_3f

    .line 2106
    .line 2107
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 2108
    .line 2109
    .line 2110
    move-result-object v2

    .line 2111
    invoke-virtual {v2}, La25;->z()Lx15;

    .line 2112
    .line 2113
    .line 2114
    move-result-object v2

    .line 2115
    const-string v3, "Cannot fix consent fields without appInfo. appId"

    .line 2116
    .line 2117
    invoke-static {v0}, La25;->D(Ljava/lang/String;)Ly15;

    .line 2118
    .line 2119
    .line 2120
    move-result-object v0

    .line 2121
    invoke-virtual {v2, v0, v3}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2122
    .line 2123
    .line 2124
    goto :goto_1e

    .line 2125
    :cond_3f
    invoke-virtual {v1, v2, v10}, Lpb5;->m(Lm25;Lq45;)V

    .line 2126
    .line 2127
    .line 2128
    :goto_1e
    iget-object v0, v9, Lq41;->o:Ljava/lang/Object;

    .line 2129
    .line 2130
    check-cast v0, Lu45;

    .line 2131
    .line 2132
    invoke-virtual {v0}, Lu45;->t()Ljava/lang/String;

    .line 2133
    .line 2134
    .line 2135
    move-result-object v0

    .line 2136
    invoke-virtual {v1}, Lpb5;->d()Lj45;

    .line 2137
    .line 2138
    .line 2139
    move-result-object v2

    .line 2140
    invoke-virtual {v2}, Lj45;->v()V

    .line 2141
    .line 2142
    .line 2143
    invoke-virtual {v1}, Lpb5;->l0()V

    .line 2144
    .line 2145
    .line 2146
    invoke-virtual {v1}, Lpb5;->g0()Lat4;

    .line 2147
    .line 2148
    .line 2149
    move-result-object v2

    .line 2150
    invoke-virtual {v2, v0}, Lat4;->z0(Ljava/lang/String;)Lm25;

    .line 2151
    .line 2152
    .line 2153
    move-result-object v2

    .line 2154
    if-nez v2, :cond_40

    .line 2155
    .line 2156
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 2157
    .line 2158
    .line 2159
    move-result-object v2

    .line 2160
    invoke-virtual {v2}, La25;->A()Lx15;

    .line 2161
    .line 2162
    .line 2163
    move-result-object v2

    .line 2164
    const-string v3, "Cannot populate ad_campaign_info without appInfo. appId"

    .line 2165
    .line 2166
    invoke-static {v0}, La25;->D(Ljava/lang/String;)Ly15;

    .line 2167
    .line 2168
    .line 2169
    move-result-object v0

    .line 2170
    invoke-virtual {v2, v0, v3}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2171
    .line 2172
    .line 2173
    goto :goto_1f

    .line 2174
    :cond_40
    invoke-virtual {v1, v2, v10}, Lpb5;->n(Lm25;Lq45;)V

    .line 2175
    .line 2176
    .line 2177
    :goto_1f
    invoke-virtual {v10}, Lpn4;->b()V

    .line 2178
    .line 2179
    .line 2180
    iget-object v0, v10, Lpn4;->o:Lrn4;

    .line 2181
    .line 2182
    check-cast v0, Lu45;

    .line 2183
    .line 2184
    const-wide v2, 0x7fffffffffffffffL

    .line 2185
    .line 2186
    .line 2187
    .line 2188
    .line 2189
    invoke-virtual {v0, v2, v3}, Lu45;->l0(J)V

    .line 2190
    .line 2191
    .line 2192
    invoke-virtual {v10}, Lpn4;->b()V

    .line 2193
    .line 2194
    .line 2195
    iget-object v0, v10, Lpn4;->o:Lrn4;

    .line 2196
    .line 2197
    check-cast v0, Lu45;

    .line 2198
    .line 2199
    const-wide/high16 v2, -0x8000000000000000L

    .line 2200
    .line 2201
    invoke-virtual {v0, v2, v3}, Lu45;->m0(J)V

    .line 2202
    .line 2203
    .line 2204
    const/4 v0, 0x0

    .line 2205
    :goto_20
    invoke-virtual {v10}, Lq45;->U()I

    .line 2206
    .line 2207
    .line 2208
    move-result v2

    .line 2209
    if-ge v0, v2, :cond_43

    .line 2210
    .line 2211
    iget-object v2, v10, Lpn4;->o:Lrn4;

    .line 2212
    .line 2213
    check-cast v2, Lu45;

    .line 2214
    .line 2215
    invoke-virtual {v2, v0}, Lu45;->Y1(I)Lu35;

    .line 2216
    .line 2217
    .line 2218
    move-result-object v2

    .line 2219
    invoke-virtual {v2}, Lu35;->A()J

    .line 2220
    .line 2221
    .line 2222
    move-result-wide v3

    .line 2223
    iget-object v5, v10, Lpn4;->o:Lrn4;

    .line 2224
    .line 2225
    check-cast v5, Lu45;

    .line 2226
    .line 2227
    invoke-virtual {v5}, Lu45;->f2()J

    .line 2228
    .line 2229
    .line 2230
    move-result-wide v5

    .line 2231
    cmp-long v3, v3, v5

    .line 2232
    .line 2233
    if-gez v3, :cond_41

    .line 2234
    .line 2235
    invoke-virtual {v2}, Lu35;->A()J

    .line 2236
    .line 2237
    .line 2238
    move-result-wide v3

    .line 2239
    invoke-virtual {v10}, Lpn4;->b()V

    .line 2240
    .line 2241
    .line 2242
    iget-object v5, v10, Lpn4;->o:Lrn4;

    .line 2243
    .line 2244
    check-cast v5, Lu45;

    .line 2245
    .line 2246
    invoke-virtual {v5, v3, v4}, Lu45;->l0(J)V

    .line 2247
    .line 2248
    .line 2249
    :cond_41
    invoke-virtual {v2}, Lu35;->A()J

    .line 2250
    .line 2251
    .line 2252
    move-result-wide v3

    .line 2253
    iget-object v5, v10, Lpn4;->o:Lrn4;

    .line 2254
    .line 2255
    check-cast v5, Lu45;

    .line 2256
    .line 2257
    invoke-virtual {v5}, Lu45;->h2()J

    .line 2258
    .line 2259
    .line 2260
    move-result-wide v5

    .line 2261
    cmp-long v3, v3, v5

    .line 2262
    .line 2263
    if-lez v3, :cond_42

    .line 2264
    .line 2265
    invoke-virtual {v2}, Lu35;->A()J

    .line 2266
    .line 2267
    .line 2268
    move-result-wide v2

    .line 2269
    invoke-virtual {v10}, Lpn4;->b()V

    .line 2270
    .line 2271
    .line 2272
    iget-object v4, v10, Lpn4;->o:Lrn4;

    .line 2273
    .line 2274
    check-cast v4, Lu45;

    .line 2275
    .line 2276
    invoke-virtual {v4, v2, v3}, Lu45;->m0(J)V

    .line 2277
    .line 2278
    .line 2279
    :cond_42
    add-int/lit8 v0, v0, 0x1

    .line 2280
    .line 2281
    goto :goto_20

    .line 2282
    :cond_43
    invoke-virtual {v10}, Lq45;->L()V

    .line 2283
    .line 2284
    .line 2285
    sget-object v0, Ly55;->c:Ly55;

    .line 2286
    .line 2287
    iget-object v0, v9, Lq41;->o:Ljava/lang/Object;

    .line 2288
    .line 2289
    check-cast v0, Lu45;

    .line 2290
    .line 2291
    invoke-virtual {v0}, Lu45;->t()Ljava/lang/String;

    .line 2292
    .line 2293
    .line 2294
    move-result-object v0

    .line 2295
    invoke-virtual {v1, v0}, Lpb5;->a(Ljava/lang/String;)Ly55;

    .line 2296
    .line 2297
    .line 2298
    move-result-object v0

    .line 2299
    iget-object v2, v9, Lq41;->o:Ljava/lang/Object;

    .line 2300
    .line 2301
    check-cast v2, Lu45;

    .line 2302
    .line 2303
    invoke-virtual {v2}, Lu45;->y0()Ljava/lang/String;

    .line 2304
    .line 2305
    .line 2306
    move-result-object v2

    .line 2307
    const/16 v3, 0x64

    .line 2308
    .line 2309
    invoke-static {v3, v2}, Ly55;->c(ILjava/lang/String;)Ly55;

    .line 2310
    .line 2311
    .line 2312
    move-result-object v2

    .line 2313
    invoke-virtual {v0, v2}, Ly55;->j(Ly55;)Ly55;

    .line 2314
    .line 2315
    .line 2316
    move-result-object v0

    .line 2317
    invoke-virtual {v1}, Lpb5;->g0()Lat4;

    .line 2318
    .line 2319
    .line 2320
    move-result-object v2

    .line 2321
    iget-object v3, v9, Lq41;->o:Ljava/lang/Object;

    .line 2322
    .line 2323
    check-cast v3, Lu45;

    .line 2324
    .line 2325
    invoke-virtual {v3}, Lu45;->t()Ljava/lang/String;

    .line 2326
    .line 2327
    .line 2328
    move-result-object v3

    .line 2329
    invoke-virtual {v2, v3}, Lat4;->e0(Ljava/lang/String;)Ly55;

    .line 2330
    .line 2331
    .line 2332
    move-result-object v2

    .line 2333
    invoke-virtual {v1}, Lpb5;->g0()Lat4;

    .line 2334
    .line 2335
    .line 2336
    move-result-object v3

    .line 2337
    iget-object v4, v9, Lq41;->o:Ljava/lang/Object;

    .line 2338
    .line 2339
    check-cast v4, Lu45;

    .line 2340
    .line 2341
    invoke-virtual {v4}, Lu45;->t()Ljava/lang/String;

    .line 2342
    .line 2343
    .line 2344
    move-result-object v4

    .line 2345
    invoke-virtual {v3, v4, v0}, Lat4;->d0(Ljava/lang/String;Ly55;)V

    .line 2346
    .line 2347
    .line 2348
    sget-object v3, Lx55;->p:Lx55;

    .line 2349
    .line 2350
    invoke-virtual {v0, v3}, Ly55;->i(Lx55;)Z

    .line 2351
    .line 2352
    .line 2353
    move-result v4

    .line 2354
    if-nez v4, :cond_44

    .line 2355
    .line 2356
    invoke-virtual {v2, v3}, Ly55;->i(Lx55;)Z

    .line 2357
    .line 2358
    .line 2359
    move-result v4

    .line 2360
    if-eqz v4, :cond_44

    .line 2361
    .line 2362
    invoke-virtual {v1}, Lpb5;->g0()Lat4;

    .line 2363
    .line 2364
    .line 2365
    move-result-object v2

    .line 2366
    iget-object v4, v9, Lq41;->o:Ljava/lang/Object;

    .line 2367
    .line 2368
    check-cast v4, Lu45;

    .line 2369
    .line 2370
    invoke-virtual {v4}, Lu45;->t()Ljava/lang/String;

    .line 2371
    .line 2372
    .line 2373
    move-result-object v4

    .line 2374
    invoke-virtual {v2, v4}, Lat4;->n0(Ljava/lang/String;)V

    .line 2375
    .line 2376
    .line 2377
    goto :goto_21

    .line 2378
    :cond_44
    invoke-virtual {v0, v3}, Ly55;->i(Lx55;)Z

    .line 2379
    .line 2380
    .line 2381
    move-result v4

    .line 2382
    if-eqz v4, :cond_45

    .line 2383
    .line 2384
    invoke-virtual {v2, v3}, Ly55;->i(Lx55;)Z

    .line 2385
    .line 2386
    .line 2387
    move-result v2

    .line 2388
    if-nez v2, :cond_45

    .line 2389
    .line 2390
    invoke-virtual {v1}, Lpb5;->g0()Lat4;

    .line 2391
    .line 2392
    .line 2393
    move-result-object v2

    .line 2394
    iget-object v4, v9, Lq41;->o:Ljava/lang/Object;

    .line 2395
    .line 2396
    check-cast v4, Lu45;

    .line 2397
    .line 2398
    invoke-virtual {v4}, Lu45;->t()Ljava/lang/String;

    .line 2399
    .line 2400
    .line 2401
    move-result-object v4

    .line 2402
    invoke-virtual {v2, v4}, Lat4;->o0(Ljava/lang/String;)V

    .line 2403
    .line 2404
    .line 2405
    :cond_45
    :goto_21
    sget-object v2, Lx55;->o:Lx55;

    .line 2406
    .line 2407
    invoke-virtual {v0, v2}, Ly55;->i(Lx55;)Z

    .line 2408
    .line 2409
    .line 2410
    move-result v4

    .line 2411
    if-nez v4, :cond_46

    .line 2412
    .line 2413
    invoke-virtual {v10}, Lpn4;->b()V

    .line 2414
    .line 2415
    .line 2416
    iget-object v4, v10, Lpn4;->o:Lrn4;

    .line 2417
    .line 2418
    check-cast v4, Lu45;

    .line 2419
    .line 2420
    invoke-virtual {v4}, Lu45;->D1()V

    .line 2421
    .line 2422
    .line 2423
    invoke-virtual {v10}, Lpn4;->b()V

    .line 2424
    .line 2425
    .line 2426
    iget-object v4, v10, Lpn4;->o:Lrn4;

    .line 2427
    .line 2428
    check-cast v4, Lu45;

    .line 2429
    .line 2430
    invoke-virtual {v4}, Lu45;->F1()V

    .line 2431
    .line 2432
    .line 2433
    invoke-virtual {v10}, Lpn4;->b()V

    .line 2434
    .line 2435
    .line 2436
    iget-object v4, v10, Lpn4;->o:Lrn4;

    .line 2437
    .line 2438
    check-cast v4, Lu45;

    .line 2439
    .line 2440
    invoke-virtual {v4}, Lu45;->W0()V

    .line 2441
    .line 2442
    .line 2443
    :cond_46
    invoke-virtual {v0, v3}, Ly55;->i(Lx55;)Z

    .line 2444
    .line 2445
    .line 2446
    move-result v4

    .line 2447
    if-nez v4, :cond_47

    .line 2448
    .line 2449
    invoke-virtual {v10}, Lpn4;->b()V

    .line 2450
    .line 2451
    .line 2452
    iget-object v4, v10, Lpn4;->o:Lrn4;

    .line 2453
    .line 2454
    check-cast v4, Lu45;

    .line 2455
    .line 2456
    invoke-virtual {v4}, Lu45;->H1()V

    .line 2457
    .line 2458
    .line 2459
    invoke-virtual {v10}, Lpn4;->b()V

    .line 2460
    .line 2461
    .line 2462
    iget-object v4, v10, Lpn4;->o:Lrn4;

    .line 2463
    .line 2464
    check-cast v4, Lu45;

    .line 2465
    .line 2466
    invoke-virtual {v4}, Lu45;->d1()V

    .line 2467
    .line 2468
    .line 2469
    :cond_47
    invoke-static {}, Ler4;->a()V

    .line 2470
    .line 2471
    .line 2472
    invoke-virtual {v1}, Lpb5;->e0()Lds4;

    .line 2473
    .line 2474
    .line 2475
    move-result-object v4

    .line 2476
    iget-object v5, v9, Lq41;->o:Ljava/lang/Object;

    .line 2477
    .line 2478
    check-cast v5, Lu45;

    .line 2479
    .line 2480
    invoke-virtual {v5}, Lu45;->t()Ljava/lang/String;

    .line 2481
    .line 2482
    .line 2483
    move-result-object v5

    .line 2484
    sget-object v6, Le05;->O0:Ld05;

    .line 2485
    .line 2486
    invoke-virtual {v4, v5, v6}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 2487
    .line 2488
    .line 2489
    move-result v4

    .line 2490
    if-eqz v4, :cond_48

    .line 2491
    .line 2492
    invoke-virtual {v1}, Lpb5;->k0()Lac5;

    .line 2493
    .line 2494
    .line 2495
    iget-object v4, v9, Lq41;->o:Ljava/lang/Object;

    .line 2496
    .line 2497
    check-cast v4, Lu45;

    .line 2498
    .line 2499
    invoke-virtual {v4}, Lu45;->t()Ljava/lang/String;

    .line 2500
    .line 2501
    .line 2502
    move-result-object v4

    .line 2503
    sget-object v5, Le05;->q0:Ld05;

    .line 2504
    .line 2505
    const/4 v11, 0x0

    .line 2506
    invoke-virtual {v5, v11}, Ld05;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2507
    .line 2508
    .line 2509
    move-result-object v5

    .line 2510
    check-cast v5, Ljava/lang/String;

    .line 2511
    .line 2512
    invoke-static {v5, v4}, Lac5;->W(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2513
    .line 2514
    .line 2515
    move-result v4

    .line 2516
    if-eqz v4, :cond_48

    .line 2517
    .line 2518
    iget-object v4, v9, Lq41;->o:Ljava/lang/Object;

    .line 2519
    .line 2520
    check-cast v4, Lu45;

    .line 2521
    .line 2522
    invoke-virtual {v4}, Lu45;->t()Ljava/lang/String;

    .line 2523
    .line 2524
    .line 2525
    move-result-object v4

    .line 2526
    invoke-virtual {v1, v4}, Lpb5;->a(Ljava/lang/String;)Ly55;

    .line 2527
    .line 2528
    .line 2529
    move-result-object v4

    .line 2530
    invoke-virtual {v4, v2}, Ly55;->i(Lx55;)Z

    .line 2531
    .line 2532
    .line 2533
    move-result v2

    .line 2534
    if-eqz v2, :cond_48

    .line 2535
    .line 2536
    iget-object v2, v9, Lq41;->o:Ljava/lang/Object;

    .line 2537
    .line 2538
    check-cast v2, Lu45;

    .line 2539
    .line 2540
    invoke-virtual {v2}, Lu45;->D0()Z

    .line 2541
    .line 2542
    .line 2543
    move-result v2

    .line 2544
    if-eqz v2, :cond_48

    .line 2545
    .line 2546
    invoke-virtual {v1, v10, v9}, Lpb5;->w(Lq45;Lq41;)V

    .line 2547
    .line 2548
    .line 2549
    :cond_48
    invoke-virtual {v10}, Lpn4;->b()V

    .line 2550
    .line 2551
    .line 2552
    iget-object v2, v10, Lpn4;->o:Lrn4;

    .line 2553
    .line 2554
    check-cast v2, Lu45;

    .line 2555
    .line 2556
    invoke-virtual {v2}, Lu45;->P1()V

    .line 2557
    .line 2558
    .line 2559
    invoke-virtual {v1}, Lpb5;->i0()Lgn4;

    .line 2560
    .line 2561
    .line 2562
    move-result-object v11

    .line 2563
    invoke-virtual {v10}, Lq45;->n()Ljava/lang/String;

    .line 2564
    .line 2565
    .line 2566
    move-result-object v12

    .line 2567
    invoke-virtual {v10}, Lq45;->T()Ljava/util/List;

    .line 2568
    .line 2569
    .line 2570
    move-result-object v13

    .line 2571
    iget-object v2, v10, Lpn4;->o:Lrn4;

    .line 2572
    .line 2573
    check-cast v2, Lu45;

    .line 2574
    .line 2575
    invoke-virtual {v2}, Lu45;->Z1()Ldo4;

    .line 2576
    .line 2577
    .line 2578
    move-result-object v2

    .line 2579
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 2580
    .line 2581
    .line 2582
    move-result-object v14

    .line 2583
    iget-object v2, v10, Lpn4;->o:Lrn4;

    .line 2584
    .line 2585
    check-cast v2, Lu45;

    .line 2586
    .line 2587
    invoke-virtual {v2}, Lu45;->f2()J

    .line 2588
    .line 2589
    .line 2590
    move-result-wide v4

    .line 2591
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2592
    .line 2593
    .line 2594
    move-result-object v15

    .line 2595
    iget-object v2, v10, Lpn4;->o:Lrn4;

    .line 2596
    .line 2597
    check-cast v2, Lu45;

    .line 2598
    .line 2599
    invoke-virtual {v2}, Lu45;->h2()J

    .line 2600
    .line 2601
    .line 2602
    move-result-wide v4

    .line 2603
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2604
    .line 2605
    .line 2606
    move-result-object v16

    .line 2607
    invoke-virtual {v0, v3}, Ly55;->i(Lx55;)Z

    .line 2608
    .line 2609
    .line 2610
    move-result v0

    .line 2611
    const/16 v28, 0x1

    .line 2612
    .line 2613
    xor-int/lit8 v17, v0, 0x1

    .line 2614
    .line 2615
    invoke-virtual/range {v11 .. v17}, Lgn4;->z(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;Z)Ljava/util/ArrayList;

    .line 2616
    .line 2617
    .line 2618
    move-result-object v0

    .line 2619
    invoke-virtual {v10, v0}, Lq45;->I(Ljava/util/ArrayList;)V

    .line 2620
    .line 2621
    .line 2622
    invoke-virtual {v1}, Lpb5;->e0()Lds4;

    .line 2623
    .line 2624
    .line 2625
    move-result-object v0

    .line 2626
    iget-object v2, v9, Lq41;->o:Ljava/lang/Object;

    .line 2627
    .line 2628
    check-cast v2, Lu45;

    .line 2629
    .line 2630
    invoke-virtual {v2}, Lu45;->t()Ljava/lang/String;

    .line 2631
    .line 2632
    .line 2633
    move-result-object v2

    .line 2634
    invoke-virtual {v0, v2}, Lds4;->x(Ljava/lang/String;)Z

    .line 2635
    .line 2636
    .line 2637
    move-result v0

    .line 2638
    if-eqz v0, :cond_61

    .line 2639
    .line 2640
    new-instance v2, Ljava/util/HashMap;

    .line 2641
    .line 2642
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2643
    .line 2644
    .line 2645
    new-instance v3, Ljava/util/ArrayList;

    .line 2646
    .line 2647
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2648
    .line 2649
    .line 2650
    invoke-virtual {v1}, Lpb5;->k0()Lac5;

    .line 2651
    .line 2652
    .line 2653
    move-result-object v0

    .line 2654
    invoke-virtual {v0}, Lac5;->t0()Ljava/security/SecureRandom;

    .line 2655
    .line 2656
    .line 2657
    move-result-object v4

    .line 2658
    const/4 v5, 0x0

    .line 2659
    :goto_22
    invoke-virtual {v10}, Lq45;->U()I

    .line 2660
    .line 2661
    .line 2662
    move-result v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2663
    const-string v6, "events"

    .line 2664
    .line 2665
    if-ge v5, v0, :cond_5f

    .line 2666
    .line 2667
    :try_start_a
    iget-object v0, v10, Lpn4;->o:Lrn4;

    .line 2668
    .line 2669
    check-cast v0, Lu45;

    .line 2670
    .line 2671
    invoke-virtual {v0, v5}, Lu45;->Y1(I)Lu35;

    .line 2672
    .line 2673
    .line 2674
    move-result-object v0

    .line 2675
    invoke-virtual {v0}, Lrn4;->k()Lpn4;

    .line 2676
    .line 2677
    .line 2678
    move-result-object v0

    .line 2679
    move-object v7, v0

    .line 2680
    check-cast v7, Ls35;

    .line 2681
    .line 2682
    invoke-virtual {v7}, Ls35;->m()Ljava/lang/String;

    .line 2683
    .line 2684
    .line 2685
    move-result-object v0

    .line 2686
    const-string v8, "_ep"

    .line 2687
    .line 2688
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2689
    .line 2690
    .line 2691
    move-result v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 2692
    const-string v8, "_efs"

    .line 2693
    .line 2694
    const-string v11, "_sr"

    .line 2695
    .line 2696
    if-eqz v0, :cond_4e

    .line 2697
    .line 2698
    :try_start_b
    invoke-virtual {v1}, Lpb5;->j0()Lub5;

    .line 2699
    .line 2700
    .line 2701
    invoke-virtual {v7}, Lpn4;->d()Lrn4;

    .line 2702
    .line 2703
    .line 2704
    move-result-object v0

    .line 2705
    check-cast v0, Lu35;

    .line 2706
    .line 2707
    const-string v12, "_en"

    .line 2708
    .line 2709
    invoke-static {v12, v0}, Lub5;->H(Ljava/lang/String;Lu35;)Ljava/io/Serializable;

    .line 2710
    .line 2711
    .line 2712
    move-result-object v0

    .line 2713
    check-cast v0, Ljava/lang/String;

    .line 2714
    .line 2715
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2716
    .line 2717
    .line 2718
    move-result-object v12

    .line 2719
    check-cast v12, Lxt4;

    .line 2720
    .line 2721
    if-nez v12, :cond_49

    .line 2722
    .line 2723
    invoke-virtual {v1}, Lpb5;->g0()Lat4;

    .line 2724
    .line 2725
    .line 2726
    move-result-object v12

    .line 2727
    iget-object v13, v9, Lq41;->o:Ljava/lang/Object;

    .line 2728
    .line 2729
    check-cast v13, Lu45;

    .line 2730
    .line 2731
    invoke-virtual {v13}, Lu45;->t()Ljava/lang/String;

    .line 2732
    .line 2733
    .line 2734
    move-result-object v13

    .line 2735
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2736
    .line 2737
    .line 2738
    move-result-object v14

    .line 2739
    check-cast v14, Ljava/lang/String;

    .line 2740
    .line 2741
    invoke-virtual {v12, v6, v13, v14}, Lat4;->V(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lxt4;

    .line 2742
    .line 2743
    .line 2744
    move-result-object v12

    .line 2745
    if-eqz v12, :cond_49

    .line 2746
    .line 2747
    invoke-virtual {v2, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2748
    .line 2749
    .line 2750
    :cond_49
    if-eqz v12, :cond_4d

    .line 2751
    .line 2752
    iget-object v0, v12, Lxt4;->i:Ljava/lang/Long;

    .line 2753
    .line 2754
    if-nez v0, :cond_4d

    .line 2755
    .line 2756
    iget-object v0, v12, Lxt4;->j:Ljava/lang/Long;

    .line 2757
    .line 2758
    if-eqz v0, :cond_4a

    .line 2759
    .line 2760
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 2761
    .line 2762
    .line 2763
    move-result-wide v13

    .line 2764
    const-wide/16 v20, 0x1

    .line 2765
    .line 2766
    cmp-long v6, v13, v20

    .line 2767
    .line 2768
    if-lez v6, :cond_4b

    .line 2769
    .line 2770
    invoke-virtual {v1}, Lpb5;->j0()Lub5;

    .line 2771
    .line 2772
    .line 2773
    invoke-static {v7, v11, v0}, Lub5;->D(Ls35;Ljava/lang/String;Ljava/lang/Long;)V

    .line 2774
    .line 2775
    .line 2776
    goto :goto_23

    .line 2777
    :cond_4a
    const-wide/16 v20, 0x1

    .line 2778
    .line 2779
    :cond_4b
    :goto_23
    iget-object v0, v12, Lxt4;->k:Ljava/lang/Boolean;

    .line 2780
    .line 2781
    if-eqz v0, :cond_4c

    .line 2782
    .line 2783
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2784
    .line 2785
    .line 2786
    move-result v0

    .line 2787
    if-eqz v0, :cond_4c

    .line 2788
    .line 2789
    invoke-virtual {v1}, Lpb5;->j0()Lub5;

    .line 2790
    .line 2791
    .line 2792
    move-object/from16 v12, v23

    .line 2793
    .line 2794
    invoke-static {v7, v8, v12}, Lub5;->D(Ls35;Ljava/lang/String;Ljava/lang/Long;)V

    .line 2795
    .line 2796
    .line 2797
    goto :goto_24

    .line 2798
    :cond_4c
    move-object/from16 v12, v23

    .line 2799
    .line 2800
    :goto_24
    invoke-virtual {v7}, Lpn4;->d()Lrn4;

    .line 2801
    .line 2802
    .line 2803
    move-result-object v0

    .line 2804
    check-cast v0, Lu35;

    .line 2805
    .line 2806
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2807
    .line 2808
    .line 2809
    goto :goto_25

    .line 2810
    :cond_4d
    move-object/from16 v12, v23

    .line 2811
    .line 2812
    const-wide/16 v20, 0x1

    .line 2813
    .line 2814
    :goto_25
    invoke-virtual {v10, v5, v7}, Lq45;->V(ILs35;)V

    .line 2815
    .line 2816
    .line 2817
    :goto_26
    move-object/from16 v23, v12

    .line 2818
    .line 2819
    const/4 v11, 0x0

    .line 2820
    goto/16 :goto_30

    .line 2821
    .line 2822
    :cond_4e
    move-object/from16 v12, v23

    .line 2823
    .line 2824
    const-wide/16 v20, 0x1

    .line 2825
    .line 2826
    invoke-virtual {v1}, Lpb5;->f0()Lw35;

    .line 2827
    .line 2828
    .line 2829
    move-result-object v13

    .line 2830
    iget-object v0, v9, Lq41;->o:Ljava/lang/Object;

    .line 2831
    .line 2832
    check-cast v0, Lu45;

    .line 2833
    .line 2834
    invoke-virtual {v0}, Lu45;->t()Ljava/lang/String;

    .line 2835
    .line 2836
    .line 2837
    move-result-object v14

    .line 2838
    const-string v0, "measurement.account.time_zone_offset_minutes"

    .line 2839
    .line 2840
    invoke-virtual {v13, v14, v0}, Lw35;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2841
    .line 2842
    .line 2843
    move-result-object v0

    .line 2844
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2845
    .line 2846
    .line 2847
    move-result v15
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 2848
    if-nez v15, :cond_4f

    .line 2849
    .line 2850
    :try_start_c
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 2851
    .line 2852
    .line 2853
    move-result-wide v13
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 2854
    goto :goto_27

    .line 2855
    :catch_0
    move-exception v0

    .line 2856
    :try_start_d
    iget-object v13, v13, Lib0;->a:Ljava/lang/Object;

    .line 2857
    .line 2858
    check-cast v13, Lr45;

    .line 2859
    .line 2860
    invoke-virtual {v13}, Lr45;->c()La25;

    .line 2861
    .line 2862
    .line 2863
    move-result-object v13

    .line 2864
    invoke-virtual {v13}, La25;->A()Lx15;

    .line 2865
    .line 2866
    .line 2867
    move-result-object v13

    .line 2868
    invoke-static {v14}, La25;->D(Ljava/lang/String;)Ly15;

    .line 2869
    .line 2870
    .line 2871
    move-result-object v14

    .line 2872
    const-string v15, "Unable to parse timezone offset. appId"

    .line 2873
    .line 2874
    invoke-virtual {v13, v14, v0, v15}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 2875
    .line 2876
    .line 2877
    :cond_4f
    const-wide/16 v13, 0x0

    .line 2878
    .line 2879
    :goto_27
    invoke-virtual {v1}, Lpb5;->k0()Lac5;

    .line 2880
    .line 2881
    .line 2882
    invoke-virtual {v7}, Ls35;->o()J

    .line 2883
    .line 2884
    .line 2885
    move-result-wide v15

    .line 2886
    const-wide/32 v17, 0xea60

    .line 2887
    .line 2888
    .line 2889
    mul-long v13, v13, v17

    .line 2890
    .line 2891
    add-long/2addr v15, v13

    .line 2892
    const-wide/32 v17, 0x5265c00

    .line 2893
    .line 2894
    .line 2895
    div-long v15, v15, v17

    .line 2896
    .line 2897
    invoke-virtual {v7}, Lpn4;->d()Lrn4;

    .line 2898
    .line 2899
    .line 2900
    move-result-object v0

    .line 2901
    check-cast v0, Lu35;

    .line 2902
    .line 2903
    const-string v1, "_dbg"

    .line 2904
    .line 2905
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2906
    .line 2907
    .line 2908
    move-result v22

    .line 2909
    if-nez v22, :cond_52

    .line 2910
    .line 2911
    invoke-virtual {v0}, Lu35;->v()Ljava/util/List;

    .line 2912
    .line 2913
    .line 2914
    move-result-object v0

    .line 2915
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2916
    .line 2917
    .line 2918
    move-result-object v0

    .line 2919
    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 2920
    .line 2921
    .line 2922
    move-result v22

    .line 2923
    if-eqz v22, :cond_52

    .line 2924
    .line 2925
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2926
    .line 2927
    .line 2928
    move-result-object v22

    .line 2929
    check-cast v22, Lc45;

    .line 2930
    .line 2931
    move-wide/from16 v23, v13

    .line 2932
    .line 2933
    invoke-virtual/range {v22 .. v22}, Lc45;->u()Ljava/lang/String;

    .line 2934
    .line 2935
    .line 2936
    move-result-object v13

    .line 2937
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2938
    .line 2939
    .line 2940
    move-result v13

    .line 2941
    if-eqz v13, :cond_51

    .line 2942
    .line 2943
    invoke-virtual/range {v22 .. v22}, Lc45;->y()J

    .line 2944
    .line 2945
    .line 2946
    move-result-wide v0

    .line 2947
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2948
    .line 2949
    .line 2950
    move-result-object v0

    .line 2951
    invoke-virtual {v12, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 2952
    .line 2953
    .line 2954
    move-result v0

    .line 2955
    if-nez v0, :cond_50

    .line 2956
    .line 2957
    goto :goto_29

    .line 2958
    :cond_50
    const/4 v0, 0x1

    .line 2959
    goto :goto_2a

    .line 2960
    :cond_51
    move-wide/from16 v13, v23

    .line 2961
    .line 2962
    goto :goto_28

    .line 2963
    :cond_52
    move-wide/from16 v23, v13

    .line 2964
    .line 2965
    :goto_29
    invoke-virtual/range {p0 .. p0}, Lpb5;->f0()Lw35;

    .line 2966
    .line 2967
    .line 2968
    move-result-object v0

    .line 2969
    iget-object v1, v9, Lq41;->o:Ljava/lang/Object;

    .line 2970
    .line 2971
    check-cast v1, Lu45;

    .line 2972
    .line 2973
    invoke-virtual {v1}, Lu45;->t()Ljava/lang/String;

    .line 2974
    .line 2975
    .line 2976
    move-result-object v1

    .line 2977
    invoke-virtual {v7}, Ls35;->m()Ljava/lang/String;

    .line 2978
    .line 2979
    .line 2980
    move-result-object v13

    .line 2981
    invoke-virtual {v0, v1, v13}, Lw35;->N(Ljava/lang/String;Ljava/lang/String;)I

    .line 2982
    .line 2983
    .line 2984
    move-result v0

    .line 2985
    :goto_2a
    if-gtz v0, :cond_53

    .line 2986
    .line 2987
    invoke-virtual/range {p0 .. p0}, Lpb5;->c()La25;

    .line 2988
    .line 2989
    .line 2990
    move-result-object v1

    .line 2991
    invoke-virtual {v1}, La25;->A()Lx15;

    .line 2992
    .line 2993
    .line 2994
    move-result-object v1

    .line 2995
    const-string v6, "Sample rate must be positive. event, rate"

    .line 2996
    .line 2997
    invoke-virtual {v7}, Ls35;->m()Ljava/lang/String;

    .line 2998
    .line 2999
    .line 3000
    move-result-object v8

    .line 3001
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3002
    .line 3003
    .line 3004
    move-result-object v0

    .line 3005
    invoke-virtual {v1, v8, v0, v6}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 3006
    .line 3007
    .line 3008
    invoke-virtual {v7}, Lpn4;->d()Lrn4;

    .line 3009
    .line 3010
    .line 3011
    move-result-object v0

    .line 3012
    check-cast v0, Lu35;

    .line 3013
    .line 3014
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3015
    .line 3016
    .line 3017
    invoke-virtual {v10, v5, v7}, Lq45;->V(ILs35;)V

    .line 3018
    .line 3019
    .line 3020
    goto/16 :goto_26

    .line 3021
    .line 3022
    :cond_53
    invoke-virtual {v7}, Ls35;->m()Ljava/lang/String;

    .line 3023
    .line 3024
    .line 3025
    move-result-object v1

    .line 3026
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3027
    .line 3028
    .line 3029
    move-result-object v1

    .line 3030
    check-cast v1, Lxt4;

    .line 3031
    .line 3032
    if-nez v1, :cond_54

    .line 3033
    .line 3034
    invoke-virtual/range {p0 .. p0}, Lpb5;->g0()Lat4;

    .line 3035
    .line 3036
    .line 3037
    move-result-object v1

    .line 3038
    iget-object v13, v9, Lq41;->o:Ljava/lang/Object;

    .line 3039
    .line 3040
    check-cast v13, Lu45;

    .line 3041
    .line 3042
    invoke-virtual {v13}, Lu45;->t()Ljava/lang/String;

    .line 3043
    .line 3044
    .line 3045
    move-result-object v13

    .line 3046
    invoke-virtual {v7}, Ls35;->m()Ljava/lang/String;

    .line 3047
    .line 3048
    .line 3049
    move-result-object v14

    .line 3050
    invoke-virtual {v1, v6, v13, v14}, Lat4;->V(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lxt4;

    .line 3051
    .line 3052
    .line 3053
    move-result-object v1

    .line 3054
    if-nez v1, :cond_54

    .line 3055
    .line 3056
    invoke-virtual/range {p0 .. p0}, Lpb5;->c()La25;

    .line 3057
    .line 3058
    .line 3059
    move-result-object v1

    .line 3060
    invoke-virtual {v1}, La25;->A()Lx15;

    .line 3061
    .line 3062
    .line 3063
    move-result-object v1

    .line 3064
    const-string v6, "Event being bundled has no eventAggregate. appId, eventName"

    .line 3065
    .line 3066
    iget-object v13, v9, Lq41;->o:Ljava/lang/Object;

    .line 3067
    .line 3068
    check-cast v13, Lu45;

    .line 3069
    .line 3070
    invoke-virtual {v13}, Lu45;->t()Ljava/lang/String;

    .line 3071
    .line 3072
    .line 3073
    move-result-object v13

    .line 3074
    invoke-virtual {v7}, Ls35;->m()Ljava/lang/String;

    .line 3075
    .line 3076
    .line 3077
    move-result-object v14

    .line 3078
    invoke-virtual {v1, v13, v14, v6}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 3079
    .line 3080
    .line 3081
    new-instance v29, Lxt4;

    .line 3082
    .line 3083
    iget-object v1, v9, Lq41;->o:Ljava/lang/Object;

    .line 3084
    .line 3085
    check-cast v1, Lu45;

    .line 3086
    .line 3087
    invoke-virtual {v1}, Lu45;->t()Ljava/lang/String;

    .line 3088
    .line 3089
    .line 3090
    move-result-object v30

    .line 3091
    invoke-virtual {v7}, Ls35;->m()Ljava/lang/String;

    .line 3092
    .line 3093
    .line 3094
    move-result-object v31

    .line 3095
    invoke-virtual {v7}, Ls35;->o()J

    .line 3096
    .line 3097
    .line 3098
    move-result-wide v38

    .line 3099
    const/16 v44, 0x0

    .line 3100
    .line 3101
    const/16 v45, 0x0

    .line 3102
    .line 3103
    const-wide/16 v32, 0x1

    .line 3104
    .line 3105
    const-wide/16 v34, 0x1

    .line 3106
    .line 3107
    const-wide/16 v36, 0x1

    .line 3108
    .line 3109
    const-wide/16 v40, 0x0

    .line 3110
    .line 3111
    const/16 v42, 0x0

    .line 3112
    .line 3113
    const/16 v43, 0x0

    .line 3114
    .line 3115
    invoke-direct/range {v29 .. v45}, Lxt4;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    .line 3116
    .line 3117
    .line 3118
    move-object/from16 v1, v29

    .line 3119
    .line 3120
    :cond_54
    invoke-virtual/range {p0 .. p0}, Lpb5;->j0()Lub5;

    .line 3121
    .line 3122
    .line 3123
    invoke-virtual {v7}, Lpn4;->d()Lrn4;

    .line 3124
    .line 3125
    .line 3126
    move-result-object v6

    .line 3127
    check-cast v6, Lu35;

    .line 3128
    .line 3129
    const-string v13, "_eid"

    .line 3130
    .line 3131
    invoke-static {v13, v6}, Lub5;->H(Ljava/lang/String;Lu35;)Ljava/io/Serializable;

    .line 3132
    .line 3133
    .line 3134
    move-result-object v6

    .line 3135
    check-cast v6, Ljava/lang/Long;

    .line 3136
    .line 3137
    if-eqz v6, :cond_55

    .line 3138
    .line 3139
    const/16 v28, 0x1

    .line 3140
    .line 3141
    :goto_2b
    const/4 v13, 0x1

    .line 3142
    goto :goto_2c

    .line 3143
    :cond_55
    const/16 v28, 0x0

    .line 3144
    .line 3145
    goto :goto_2b

    .line 3146
    :goto_2c
    if-ne v0, v13, :cond_58

    .line 3147
    .line 3148
    invoke-virtual {v7}, Lpn4;->d()Lrn4;

    .line 3149
    .line 3150
    .line 3151
    move-result-object v0

    .line 3152
    check-cast v0, Lu35;

    .line 3153
    .line 3154
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3155
    .line 3156
    .line 3157
    if-eqz v28, :cond_57

    .line 3158
    .line 3159
    iget-object v0, v1, Lxt4;->i:Ljava/lang/Long;

    .line 3160
    .line 3161
    if-nez v0, :cond_56

    .line 3162
    .line 3163
    iget-object v0, v1, Lxt4;->j:Ljava/lang/Long;

    .line 3164
    .line 3165
    if-nez v0, :cond_56

    .line 3166
    .line 3167
    iget-object v0, v1, Lxt4;->k:Ljava/lang/Boolean;

    .line 3168
    .line 3169
    if-eqz v0, :cond_57

    .line 3170
    .line 3171
    :cond_56
    const/4 v11, 0x0

    .line 3172
    invoke-virtual {v1, v11, v11, v11}, Lxt4;->b(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lxt4;

    .line 3173
    .line 3174
    .line 3175
    move-result-object v0

    .line 3176
    invoke-virtual {v7}, Ls35;->m()Ljava/lang/String;

    .line 3177
    .line 3178
    .line 3179
    move-result-object v1

    .line 3180
    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3181
    .line 3182
    .line 3183
    :cond_57
    invoke-virtual {v10, v5, v7}, Lq45;->V(ILs35;)V

    .line 3184
    .line 3185
    .line 3186
    goto/16 :goto_26

    .line 3187
    .line 3188
    :cond_58
    invoke-virtual {v4, v0}, Ljava/util/Random;->nextInt(I)I

    .line 3189
    .line 3190
    .line 3191
    move-result v14

    .line 3192
    if-nez v14, :cond_5b

    .line 3193
    .line 3194
    invoke-virtual/range {p0 .. p0}, Lpb5;->j0()Lub5;

    .line 3195
    .line 3196
    .line 3197
    int-to-long v13, v0

    .line 3198
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 3199
    .line 3200
    .line 3201
    move-result-object v0

    .line 3202
    invoke-static {v7, v11, v0}, Lub5;->D(Ls35;Ljava/lang/String;Ljava/lang/Long;)V

    .line 3203
    .line 3204
    .line 3205
    invoke-virtual {v7}, Lpn4;->d()Lrn4;

    .line 3206
    .line 3207
    .line 3208
    move-result-object v6

    .line 3209
    check-cast v6, Lu35;

    .line 3210
    .line 3211
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3212
    .line 3213
    .line 3214
    if-eqz v28, :cond_59

    .line 3215
    .line 3216
    const/4 v11, 0x0

    .line 3217
    invoke-virtual {v1, v11, v0, v11}, Lxt4;->b(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lxt4;

    .line 3218
    .line 3219
    .line 3220
    move-result-object v1

    .line 3221
    :cond_59
    invoke-virtual {v7}, Ls35;->m()Ljava/lang/String;

    .line 3222
    .line 3223
    .line 3224
    move-result-object v0

    .line 3225
    invoke-virtual {v7}, Ls35;->o()J

    .line 3226
    .line 3227
    .line 3228
    move-result-wide v39

    .line 3229
    new-instance v28, Lxt4;

    .line 3230
    .line 3231
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 3232
    .line 3233
    .line 3234
    move-result-object v41

    .line 3235
    iget-object v6, v1, Lxt4;->i:Ljava/lang/Long;

    .line 3236
    .line 3237
    iget-object v8, v1, Lxt4;->j:Ljava/lang/Long;

    .line 3238
    .line 3239
    iget-object v11, v1, Lxt4;->k:Ljava/lang/Boolean;

    .line 3240
    .line 3241
    iget-object v13, v1, Lxt4;->a:Ljava/lang/String;

    .line 3242
    .line 3243
    iget-object v14, v1, Lxt4;->b:Ljava/lang/String;

    .line 3244
    .line 3245
    move-object/from16 v29, v13

    .line 3246
    .line 3247
    move-object/from16 v30, v14

    .line 3248
    .line 3249
    iget-wide v13, v1, Lxt4;->c:J

    .line 3250
    .line 3251
    move-wide/from16 v31, v13

    .line 3252
    .line 3253
    iget-wide v13, v1, Lxt4;->d:J

    .line 3254
    .line 3255
    move-wide/from16 v33, v13

    .line 3256
    .line 3257
    iget-wide v13, v1, Lxt4;->e:J

    .line 3258
    .line 3259
    move-wide/from16 v35, v13

    .line 3260
    .line 3261
    iget-wide v13, v1, Lxt4;->f:J

    .line 3262
    .line 3263
    move-object/from16 v42, v6

    .line 3264
    .line 3265
    move-object/from16 v43, v8

    .line 3266
    .line 3267
    move-object/from16 v44, v11

    .line 3268
    .line 3269
    move-wide/from16 v37, v13

    .line 3270
    .line 3271
    invoke-direct/range {v28 .. v44}, Lxt4;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    .line 3272
    .line 3273
    .line 3274
    move-object/from16 v1, v28

    .line 3275
    .line 3276
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3277
    .line 3278
    .line 3279
    move-object/from16 v23, v12

    .line 3280
    .line 3281
    :cond_5a
    :goto_2d
    const/4 v11, 0x0

    .line 3282
    goto/16 :goto_2f

    .line 3283
    .line 3284
    :cond_5b
    iget-object v13, v1, Lxt4;->h:Ljava/lang/Long;

    .line 3285
    .line 3286
    if-eqz v13, :cond_5c

    .line 3287
    .line 3288
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    .line 3289
    .line 3290
    .line 3291
    move-result-wide v13

    .line 3292
    goto :goto_2e

    .line 3293
    :cond_5c
    invoke-virtual/range {p0 .. p0}, Lpb5;->k0()Lac5;

    .line 3294
    .line 3295
    .line 3296
    invoke-virtual {v7}, Ls35;->p()J

    .line 3297
    .line 3298
    .line 3299
    move-result-wide v13

    .line 3300
    add-long v13, v23, v13

    .line 3301
    .line 3302
    div-long v13, v13, v17

    .line 3303
    .line 3304
    :goto_2e
    cmp-long v13, v13, v15

    .line 3305
    .line 3306
    if-eqz v13, :cond_5e

    .line 3307
    .line 3308
    invoke-virtual/range {p0 .. p0}, Lpb5;->j0()Lub5;

    .line 3309
    .line 3310
    .line 3311
    invoke-static {v7, v8, v12}, Lub5;->D(Ls35;Ljava/lang/String;Ljava/lang/Long;)V

    .line 3312
    .line 3313
    .line 3314
    invoke-virtual/range {p0 .. p0}, Lpb5;->j0()Lub5;

    .line 3315
    .line 3316
    .line 3317
    int-to-long v13, v0

    .line 3318
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 3319
    .line 3320
    .line 3321
    move-result-object v0

    .line 3322
    invoke-static {v7, v11, v0}, Lub5;->D(Ls35;Ljava/lang/String;Ljava/lang/Long;)V

    .line 3323
    .line 3324
    .line 3325
    invoke-virtual {v7}, Lpn4;->d()Lrn4;

    .line 3326
    .line 3327
    .line 3328
    move-result-object v6

    .line 3329
    check-cast v6, Lu35;

    .line 3330
    .line 3331
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3332
    .line 3333
    .line 3334
    if-eqz v28, :cond_5d

    .line 3335
    .line 3336
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 3337
    .line 3338
    const/4 v11, 0x0

    .line 3339
    invoke-virtual {v1, v11, v0, v6}, Lxt4;->b(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lxt4;

    .line 3340
    .line 3341
    .line 3342
    move-result-object v1

    .line 3343
    :cond_5d
    invoke-virtual {v7}, Ls35;->m()Ljava/lang/String;

    .line 3344
    .line 3345
    .line 3346
    move-result-object v0

    .line 3347
    invoke-virtual {v7}, Ls35;->o()J

    .line 3348
    .line 3349
    .line 3350
    move-result-wide v39

    .line 3351
    new-instance v28, Lxt4;

    .line 3352
    .line 3353
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 3354
    .line 3355
    .line 3356
    move-result-object v41

    .line 3357
    iget-object v6, v1, Lxt4;->i:Ljava/lang/Long;

    .line 3358
    .line 3359
    iget-object v8, v1, Lxt4;->j:Ljava/lang/Long;

    .line 3360
    .line 3361
    iget-object v11, v1, Lxt4;->k:Ljava/lang/Boolean;

    .line 3362
    .line 3363
    iget-object v13, v1, Lxt4;->a:Ljava/lang/String;

    .line 3364
    .line 3365
    iget-object v14, v1, Lxt4;->b:Ljava/lang/String;

    .line 3366
    .line 3367
    move-object/from16 v44, v11

    .line 3368
    .line 3369
    move-object/from16 v23, v12

    .line 3370
    .line 3371
    iget-wide v11, v1, Lxt4;->c:J

    .line 3372
    .line 3373
    move-wide/from16 v31, v11

    .line 3374
    .line 3375
    iget-wide v11, v1, Lxt4;->d:J

    .line 3376
    .line 3377
    move-wide/from16 v33, v11

    .line 3378
    .line 3379
    iget-wide v11, v1, Lxt4;->e:J

    .line 3380
    .line 3381
    move-wide/from16 v35, v11

    .line 3382
    .line 3383
    iget-wide v11, v1, Lxt4;->f:J

    .line 3384
    .line 3385
    move-object/from16 v42, v6

    .line 3386
    .line 3387
    move-object/from16 v43, v8

    .line 3388
    .line 3389
    move-wide/from16 v37, v11

    .line 3390
    .line 3391
    move-object/from16 v29, v13

    .line 3392
    .line 3393
    move-object/from16 v30, v14

    .line 3394
    .line 3395
    invoke-direct/range {v28 .. v44}, Lxt4;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    .line 3396
    .line 3397
    .line 3398
    move-object/from16 v1, v28

    .line 3399
    .line 3400
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3401
    .line 3402
    .line 3403
    goto :goto_2d

    .line 3404
    :cond_5e
    move-object/from16 v23, v12

    .line 3405
    .line 3406
    if-eqz v28, :cond_5a

    .line 3407
    .line 3408
    invoke-virtual {v7}, Ls35;->m()Ljava/lang/String;

    .line 3409
    .line 3410
    .line 3411
    move-result-object v0

    .line 3412
    const/4 v11, 0x0

    .line 3413
    invoke-virtual {v1, v6, v11, v11}, Lxt4;->b(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lxt4;

    .line 3414
    .line 3415
    .line 3416
    move-result-object v1

    .line 3417
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3418
    .line 3419
    .line 3420
    :goto_2f
    invoke-virtual {v10, v5, v7}, Lq45;->V(ILs35;)V

    .line 3421
    .line 3422
    .line 3423
    :goto_30
    add-int/lit8 v5, v5, 0x1

    .line 3424
    .line 3425
    move-object/from16 v1, p0

    .line 3426
    .line 3427
    goto/16 :goto_22

    .line 3428
    .line 3429
    :cond_5f
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 3430
    .line 3431
    .line 3432
    move-result v0

    .line 3433
    invoke-virtual {v10}, Lq45;->U()I

    .line 3434
    .line 3435
    .line 3436
    move-result v1

    .line 3437
    if-ge v0, v1, :cond_60

    .line 3438
    .line 3439
    invoke-virtual {v10}, Lpn4;->b()V

    .line 3440
    .line 3441
    .line 3442
    iget-object v0, v10, Lpn4;->o:Lrn4;

    .line 3443
    .line 3444
    check-cast v0, Lu45;

    .line 3445
    .line 3446
    invoke-virtual {v0}, Lu45;->e0()V

    .line 3447
    .line 3448
    .line 3449
    invoke-virtual {v10}, Lpn4;->b()V

    .line 3450
    .line 3451
    .line 3452
    iget-object v0, v10, Lpn4;->o:Lrn4;

    .line 3453
    .line 3454
    check-cast v0, Lu45;

    .line 3455
    .line 3456
    invoke-virtual {v0, v3}, Lu45;->d0(Ljava/lang/Iterable;)V

    .line 3457
    .line 3458
    .line 3459
    :cond_60
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 3460
    .line 3461
    .line 3462
    move-result-object v0

    .line 3463
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 3464
    .line 3465
    .line 3466
    move-result-object v0

    .line 3467
    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 3468
    .line 3469
    .line 3470
    move-result v1

    .line 3471
    if-eqz v1, :cond_61

    .line 3472
    .line 3473
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 3474
    .line 3475
    .line 3476
    move-result-object v1

    .line 3477
    check-cast v1, Ljava/util/Map$Entry;

    .line 3478
    .line 3479
    invoke-virtual/range {p0 .. p0}, Lpb5;->g0()Lat4;

    .line 3480
    .line 3481
    .line 3482
    move-result-object v2

    .line 3483
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 3484
    .line 3485
    .line 3486
    move-result-object v1

    .line 3487
    check-cast v1, Lxt4;

    .line 3488
    .line 3489
    invoke-virtual {v2, v6, v1}, Lat4;->W(Ljava/lang/String;Lxt4;)V

    .line 3490
    .line 3491
    .line 3492
    goto :goto_31

    .line 3493
    :cond_61
    iget-object v0, v9, Lq41;->o:Ljava/lang/Object;

    .line 3494
    .line 3495
    check-cast v0, Lu45;

    .line 3496
    .line 3497
    invoke-virtual {v0}, Lu45;->t()Ljava/lang/String;

    .line 3498
    .line 3499
    .line 3500
    move-result-object v1

    .line 3501
    invoke-virtual/range {p0 .. p0}, Lpb5;->g0()Lat4;

    .line 3502
    .line 3503
    .line 3504
    move-result-object v0

    .line 3505
    invoke-virtual {v0, v1}, Lat4;->z0(Ljava/lang/String;)Lm25;

    .line 3506
    .line 3507
    .line 3508
    move-result-object v0

    .line 3509
    if-nez v0, :cond_62

    .line 3510
    .line 3511
    invoke-virtual/range {p0 .. p0}, Lpb5;->c()La25;

    .line 3512
    .line 3513
    .line 3514
    move-result-object v0

    .line 3515
    invoke-virtual {v0}, La25;->z()Lx15;

    .line 3516
    .line 3517
    .line 3518
    move-result-object v0

    .line 3519
    const-string v2, "Bundling raw events w/o app info. appId"

    .line 3520
    .line 3521
    iget-object v3, v9, Lq41;->o:Ljava/lang/Object;

    .line 3522
    .line 3523
    check-cast v3, Lu45;

    .line 3524
    .line 3525
    invoke-virtual {v3}, Lu45;->t()Ljava/lang/String;

    .line 3526
    .line 3527
    .line 3528
    move-result-object v3

    .line 3529
    invoke-static {v3}, La25;->D(Ljava/lang/String;)Ly15;

    .line 3530
    .line 3531
    .line 3532
    move-result-object v3

    .line 3533
    invoke-virtual {v0, v3, v2}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3534
    .line 3535
    .line 3536
    goto/16 :goto_36

    .line 3537
    .line 3538
    :cond_62
    invoke-virtual {v10}, Lq45;->U()I

    .line 3539
    .line 3540
    .line 3541
    move-result v2

    .line 3542
    if-lez v2, :cond_67

    .line 3543
    .line 3544
    iget-object v2, v0, Lm25;->a:Lr45;

    .line 3545
    .line 3546
    iget-object v2, v2, Lr45;->g:Lj45;

    .line 3547
    .line 3548
    invoke-static {v2}, Lr45;->l(Lq55;)V

    .line 3549
    .line 3550
    .line 3551
    invoke-virtual {v2}, Lj45;->v()V

    .line 3552
    .line 3553
    .line 3554
    iget-wide v2, v0, Lm25;->i:J

    .line 3555
    .line 3556
    const-wide/16 v26, 0x0

    .line 3557
    .line 3558
    cmp-long v4, v2, v26

    .line 3559
    .line 3560
    if-eqz v4, :cond_63

    .line 3561
    .line 3562
    invoke-virtual {v10, v2, v3}, Lq45;->g(J)V

    .line 3563
    .line 3564
    .line 3565
    goto :goto_32

    .line 3566
    :cond_63
    invoke-virtual {v10}, Lq45;->h()V

    .line 3567
    .line 3568
    .line 3569
    :goto_32
    iget-object v4, v0, Lm25;->a:Lr45;

    .line 3570
    .line 3571
    iget-object v4, v4, Lr45;->g:Lj45;

    .line 3572
    .line 3573
    invoke-static {v4}, Lr45;->l(Lq55;)V

    .line 3574
    .line 3575
    .line 3576
    invoke-virtual {v4}, Lj45;->v()V

    .line 3577
    .line 3578
    .line 3579
    iget-wide v4, v0, Lm25;->h:J

    .line 3580
    .line 3581
    const-wide/16 v26, 0x0

    .line 3582
    .line 3583
    cmp-long v6, v4, v26

    .line 3584
    .line 3585
    if-nez v6, :cond_64

    .line 3586
    .line 3587
    goto :goto_33

    .line 3588
    :cond_64
    move-wide v2, v4

    .line 3589
    :goto_33
    cmp-long v4, v2, v26

    .line 3590
    .line 3591
    if-eqz v4, :cond_65

    .line 3592
    .line 3593
    invoke-virtual {v10, v2, v3}, Lq45;->a0(J)V

    .line 3594
    .line 3595
    .line 3596
    goto :goto_34

    .line 3597
    :cond_65
    invoke-virtual {v10}, Lq45;->b0()V

    .line 3598
    .line 3599
    .line 3600
    :goto_34
    invoke-virtual {v10}, Lq45;->U()I

    .line 3601
    .line 3602
    .line 3603
    move-result v2

    .line 3604
    int-to-long v2, v2

    .line 3605
    invoke-virtual {v0, v2, v3}, Lm25;->h(J)V

    .line 3606
    .line 3607
    .line 3608
    iget-object v2, v0, Lm25;->a:Lr45;

    .line 3609
    .line 3610
    iget-object v2, v2, Lr45;->g:Lj45;

    .line 3611
    .line 3612
    invoke-static {v2}, Lr45;->l(Lq55;)V

    .line 3613
    .line 3614
    .line 3615
    invoke-virtual {v2}, Lj45;->v()V

    .line 3616
    .line 3617
    .line 3618
    iget-wide v2, v0, Lm25;->F:J

    .line 3619
    .line 3620
    long-to-int v2, v2

    .line 3621
    invoke-virtual {v10}, Lpn4;->b()V

    .line 3622
    .line 3623
    .line 3624
    iget-object v3, v10, Lpn4;->o:Lrn4;

    .line 3625
    .line 3626
    check-cast v3, Lu45;

    .line 3627
    .line 3628
    invoke-virtual {v3, v2}, Lu45;->n1(I)V

    .line 3629
    .line 3630
    .line 3631
    iget-object v2, v0, Lm25;->a:Lr45;

    .line 3632
    .line 3633
    iget-object v2, v2, Lr45;->g:Lj45;

    .line 3634
    .line 3635
    invoke-static {v2}, Lr45;->l(Lq55;)V

    .line 3636
    .line 3637
    .line 3638
    invoke-virtual {v2}, Lj45;->v()V

    .line 3639
    .line 3640
    .line 3641
    iget-wide v2, v0, Lm25;->g:J

    .line 3642
    .line 3643
    long-to-int v2, v2

    .line 3644
    invoke-virtual {v10, v2}, Lq45;->w(I)V

    .line 3645
    .line 3646
    .line 3647
    iget-object v2, v10, Lpn4;->o:Lrn4;

    .line 3648
    .line 3649
    check-cast v2, Lu45;

    .line 3650
    .line 3651
    invoke-virtual {v2}, Lu45;->f2()J

    .line 3652
    .line 3653
    .line 3654
    move-result-wide v2

    .line 3655
    invoke-virtual {v0, v2, v3}, Lm25;->M(J)V

    .line 3656
    .line 3657
    .line 3658
    iget-object v2, v10, Lpn4;->o:Lrn4;

    .line 3659
    .line 3660
    check-cast v2, Lu45;

    .line 3661
    .line 3662
    invoke-virtual {v2}, Lu45;->h2()J

    .line 3663
    .line 3664
    .line 3665
    move-result-wide v2

    .line 3666
    invoke-virtual {v0, v2, v3}, Lm25;->N(J)V

    .line 3667
    .line 3668
    .line 3669
    invoke-virtual {v0}, Lm25;->v()Ljava/lang/String;

    .line 3670
    .line 3671
    .line 3672
    move-result-object v2

    .line 3673
    if-eqz v2, :cond_66

    .line 3674
    .line 3675
    invoke-virtual {v10, v2}, Lq45;->E(Ljava/lang/String;)V

    .line 3676
    .line 3677
    .line 3678
    goto :goto_35

    .line 3679
    :cond_66
    invoke-virtual {v10}, Lq45;->F()V

    .line 3680
    .line 3681
    .line 3682
    :goto_35
    invoke-virtual/range {p0 .. p0}, Lpb5;->g0()Lat4;

    .line 3683
    .line 3684
    .line 3685
    move-result-object v2

    .line 3686
    const/4 v3, 0x0

    .line 3687
    invoke-virtual {v2, v0, v3}, Lat4;->A0(Lm25;Z)V

    .line 3688
    .line 3689
    .line 3690
    :cond_67
    :goto_36
    invoke-virtual {v10}, Lq45;->U()I

    .line 3691
    .line 3692
    .line 3693
    move-result v0

    .line 3694
    if-lez v0, :cond_6f

    .line 3695
    .line 3696
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3697
    .line 3698
    .line 3699
    invoke-virtual/range {p0 .. p0}, Lpb5;->e0()Lds4;

    .line 3700
    .line 3701
    .line 3702
    move-result-object v0

    .line 3703
    iget-object v2, v9, Lq41;->o:Ljava/lang/Object;

    .line 3704
    .line 3705
    check-cast v2, Lu45;

    .line 3706
    .line 3707
    invoke-virtual {v2}, Lu45;->t()Ljava/lang/String;

    .line 3708
    .line 3709
    .line 3710
    move-result-object v2

    .line 3711
    sget-object v3, Le05;->j1:Ld05;

    .line 3712
    .line 3713
    invoke-virtual {v0, v2, v3}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 3714
    .line 3715
    .line 3716
    move-result v0

    .line 3717
    if-eqz v0, :cond_6b

    .line 3718
    .line 3719
    invoke-virtual {v10}, Lq45;->n()Ljava/lang/String;

    .line 3720
    .line 3721
    .line 3722
    move-result-object v0

    .line 3723
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 3724
    .line 3725
    .line 3726
    move-result v2

    .line 3727
    if-eqz v2, :cond_68

    .line 3728
    .line 3729
    goto :goto_37

    .line 3730
    :cond_68
    invoke-virtual/range {p0 .. p0}, Lpb5;->g0()Lat4;

    .line 3731
    .line 3732
    .line 3733
    move-result-object v2

    .line 3734
    invoke-virtual {v2, v0}, Lat4;->z0(Ljava/lang/String;)Lm25;

    .line 3735
    .line 3736
    .line 3737
    move-result-object v2

    .line 3738
    if-eqz v2, :cond_6b

    .line 3739
    .line 3740
    invoke-virtual/range {p0 .. p0}, Lpb5;->f()Lcom/google/android/gms/common/util/Clock;

    .line 3741
    .line 3742
    .line 3743
    move-result-object v3

    .line 3744
    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 3745
    .line 3746
    .line 3747
    move-result-wide v3

    .line 3748
    iget-object v5, v2, Lm25;->a:Lr45;

    .line 3749
    .line 3750
    iget-object v5, v5, Lr45;->g:Lj45;

    .line 3751
    .line 3752
    invoke-static {v5}, Lr45;->l(Lq55;)V

    .line 3753
    .line 3754
    .line 3755
    invoke-virtual {v5}, Lj45;->v()V

    .line 3756
    .line 3757
    .line 3758
    iget-wide v5, v2, Lm25;->J:J

    .line 3759
    .line 3760
    sub-long v5, v3, v5

    .line 3761
    .line 3762
    invoke-virtual/range {p0 .. p0}, Lpb5;->e0()Lds4;

    .line 3763
    .line 3764
    .line 3765
    move-result-object v7

    .line 3766
    sget-object v8, Le05;->B0:Ld05;

    .line 3767
    .line 3768
    invoke-virtual {v7, v0, v8}, Lds4;->D(Ljava/lang/String;Ld05;)J

    .line 3769
    .line 3770
    .line 3771
    move-result-wide v7

    .line 3772
    cmp-long v5, v5, v7

    .line 3773
    .line 3774
    if-ltz v5, :cond_6b

    .line 3775
    .line 3776
    invoke-virtual/range {p0 .. p0}, Lpb5;->g0()Lat4;

    .line 3777
    .line 3778
    .line 3779
    move-result-object v5

    .line 3780
    const-string v6, ""

    .line 3781
    .line 3782
    invoke-virtual {v5, v6}, Lat4;->c0(Ljava/lang/String;)Ljava/util/List;

    .line 3783
    .line 3784
    .line 3785
    move-result-object v5

    .line 3786
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 3787
    .line 3788
    .line 3789
    move-result v6

    .line 3790
    if-nez v6, :cond_69

    .line 3791
    .line 3792
    invoke-virtual {v10}, Lpn4;->b()V

    .line 3793
    .line 3794
    .line 3795
    iget-object v6, v10, Lpn4;->o:Lrn4;

    .line 3796
    .line 3797
    check-cast v6, Lu45;

    .line 3798
    .line 3799
    invoke-virtual {v6, v5}, Lu45;->W1(Ljava/util/List;)V

    .line 3800
    .line 3801
    .line 3802
    :cond_69
    invoke-virtual/range {p0 .. p0}, Lpb5;->g0()Lat4;

    .line 3803
    .line 3804
    .line 3805
    move-result-object v5

    .line 3806
    invoke-virtual {v5, v0}, Lat4;->c0(Ljava/lang/String;)Ljava/util/List;

    .line 3807
    .line 3808
    .line 3809
    move-result-object v0

    .line 3810
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 3811
    .line 3812
    .line 3813
    move-result v5

    .line 3814
    if-nez v5, :cond_6a

    .line 3815
    .line 3816
    invoke-virtual {v10}, Lpn4;->b()V

    .line 3817
    .line 3818
    .line 3819
    iget-object v5, v10, Lpn4;->o:Lrn4;

    .line 3820
    .line 3821
    check-cast v5, Lu45;

    .line 3822
    .line 3823
    invoke-virtual {v5, v0}, Lu45;->W1(Ljava/util/List;)V

    .line 3824
    .line 3825
    .line 3826
    :cond_6a
    invoke-virtual {v2, v3, v4}, Lm25;->u(J)V

    .line 3827
    .line 3828
    .line 3829
    invoke-virtual/range {p0 .. p0}, Lpb5;->g0()Lat4;

    .line 3830
    .line 3831
    .line 3832
    move-result-object v0

    .line 3833
    const/4 v3, 0x0

    .line 3834
    invoke-virtual {v0, v2, v3}, Lat4;->A0(Lm25;Z)V

    .line 3835
    .line 3836
    .line 3837
    :cond_6b
    :goto_37
    invoke-virtual/range {p0 .. p0}, Lpb5;->f0()Lw35;

    .line 3838
    .line 3839
    .line 3840
    move-result-object v0

    .line 3841
    iget-object v2, v9, Lq41;->o:Ljava/lang/Object;

    .line 3842
    .line 3843
    check-cast v2, Lu45;

    .line 3844
    .line 3845
    invoke-virtual {v2}, Lu45;->t()Ljava/lang/String;

    .line 3846
    .line 3847
    .line 3848
    move-result-object v2

    .line 3849
    invoke-virtual {v0, v2}, Lw35;->H(Ljava/lang/String;)Ln15;

    .line 3850
    .line 3851
    .line 3852
    move-result-object v0

    .line 3853
    if-eqz v0, :cond_6d

    .line 3854
    .line 3855
    invoke-virtual {v0}, Ln15;->t()Z

    .line 3856
    .line 3857
    .line 3858
    move-result v2

    .line 3859
    if-nez v2, :cond_6c

    .line 3860
    .line 3861
    goto :goto_38

    .line 3862
    :cond_6c
    invoke-virtual {v0}, Ln15;->u()J

    .line 3863
    .line 3864
    .line 3865
    move-result-wide v2

    .line 3866
    invoke-virtual {v10}, Lpn4;->b()V

    .line 3867
    .line 3868
    .line 3869
    iget-object v0, v10, Lpn4;->o:Lrn4;

    .line 3870
    .line 3871
    check-cast v0, Lu45;

    .line 3872
    .line 3873
    invoke-virtual {v0, v2, v3}, Lu45;->U0(J)V

    .line 3874
    .line 3875
    .line 3876
    goto :goto_39

    .line 3877
    :cond_6d
    :goto_38
    iget-object v0, v9, Lq41;->o:Ljava/lang/Object;

    .line 3878
    .line 3879
    check-cast v0, Lu45;

    .line 3880
    .line 3881
    invoke-virtual {v0}, Lu45;->I()Ljava/lang/String;

    .line 3882
    .line 3883
    .line 3884
    move-result-object v0

    .line 3885
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 3886
    .line 3887
    .line 3888
    move-result v0

    .line 3889
    if-eqz v0, :cond_6e

    .line 3890
    .line 3891
    invoke-virtual {v10}, Lpn4;->b()V

    .line 3892
    .line 3893
    .line 3894
    iget-object v0, v10, Lpn4;->o:Lrn4;

    .line 3895
    .line 3896
    check-cast v0, Lu45;

    .line 3897
    .line 3898
    const-wide/16 v2, -0x1

    .line 3899
    .line 3900
    invoke-virtual {v0, v2, v3}, Lu45;->U0(J)V

    .line 3901
    .line 3902
    .line 3903
    goto :goto_39

    .line 3904
    :cond_6e
    invoke-virtual/range {p0 .. p0}, Lpb5;->c()La25;

    .line 3905
    .line 3906
    .line 3907
    move-result-object v0

    .line 3908
    invoke-virtual {v0}, La25;->A()Lx15;

    .line 3909
    .line 3910
    .line 3911
    move-result-object v0

    .line 3912
    const-string v2, "Did not find measurement config or missing version info. appId"

    .line 3913
    .line 3914
    iget-object v3, v9, Lq41;->o:Ljava/lang/Object;

    .line 3915
    .line 3916
    check-cast v3, Lu45;

    .line 3917
    .line 3918
    invoke-virtual {v3}, Lu45;->t()Ljava/lang/String;

    .line 3919
    .line 3920
    .line 3921
    move-result-object v3

    .line 3922
    invoke-static {v3}, La25;->D(Ljava/lang/String;)Ly15;

    .line 3923
    .line 3924
    .line 3925
    move-result-object v3

    .line 3926
    invoke-virtual {v0, v3, v2}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3927
    .line 3928
    .line 3929
    :goto_39
    invoke-virtual/range {p0 .. p0}, Lpb5;->g0()Lat4;

    .line 3930
    .line 3931
    .line 3932
    move-result-object v0

    .line 3933
    invoke-virtual {v10}, Lpn4;->d()Lrn4;

    .line 3934
    .line 3935
    .line 3936
    move-result-object v2

    .line 3937
    check-cast v2, Lu45;

    .line 3938
    .line 3939
    move/from16 v11, v19

    .line 3940
    .line 3941
    invoke-virtual {v0, v2, v11}, Lat4;->E0(Lu45;Z)V

    .line 3942
    .line 3943
    .line 3944
    :cond_6f
    invoke-virtual/range {p0 .. p0}, Lpb5;->g0()Lat4;

    .line 3945
    .line 3946
    .line 3947
    move-result-object v0

    .line 3948
    iget-object v2, v9, Lq41;->p:Ljava/lang/Object;

    .line 3949
    .line 3950
    check-cast v2, Ljava/util/ArrayList;

    .line 3951
    .line 3952
    invoke-virtual {v0, v2}, Lat4;->L(Ljava/util/List;)V

    .line 3953
    .line 3954
    .line 3955
    invoke-virtual/range {p0 .. p0}, Lpb5;->g0()Lat4;

    .line 3956
    .line 3957
    .line 3958
    move-result-object v2

    .line 3959
    invoke-virtual {v2}, Lat4;->m0()Landroid/database/sqlite/SQLiteDatabase;

    .line 3960
    .line 3961
    .line 3962
    move-result-object v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 3963
    :try_start_e
    const-string v3, "delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)"

    .line 3964
    .line 3965
    filled-new-array {v1, v1}, [Ljava/lang/String;

    .line 3966
    .line 3967
    .line 3968
    move-result-object v4

    .line 3969
    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 3970
    .line 3971
    .line 3972
    goto :goto_3a

    .line 3973
    :catch_1
    move-exception v0

    .line 3974
    :try_start_f
    iget-object v2, v2, Lib0;->a:Ljava/lang/Object;

    .line 3975
    .line 3976
    check-cast v2, Lr45;

    .line 3977
    .line 3978
    invoke-virtual {v2}, Lr45;->c()La25;

    .line 3979
    .line 3980
    .line 3981
    move-result-object v2

    .line 3982
    invoke-virtual {v2}, La25;->z()Lx15;

    .line 3983
    .line 3984
    .line 3985
    move-result-object v2

    .line 3986
    invoke-static {v1}, La25;->D(Ljava/lang/String;)Ly15;

    .line 3987
    .line 3988
    .line 3989
    move-result-object v1

    .line 3990
    const-string v3, "Failed to remove unused event metadata. appId"

    .line 3991
    .line 3992
    invoke-virtual {v2, v1, v0, v3}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 3993
    .line 3994
    .line 3995
    :goto_3a
    invoke-virtual/range {p0 .. p0}, Lpb5;->g0()Lat4;

    .line 3996
    .line 3997
    .line 3998
    move-result-object v0

    .line 3999
    invoke-virtual {v0}, Lat4;->k0()V

    .line 4000
    .line 4001
    .line 4002
    const/4 v11, 0x1

    .line 4003
    goto :goto_3c

    .line 4004
    :goto_3b
    invoke-virtual/range {p0 .. p0}, Lpb5;->g0()Lat4;

    .line 4005
    .line 4006
    .line 4007
    move-result-object v0

    .line 4008
    invoke-virtual {v0}, Lat4;->k0()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 4009
    .line 4010
    .line 4011
    move v11, v3

    .line 4012
    :goto_3c
    invoke-virtual/range {p0 .. p0}, Lpb5;->g0()Lat4;

    .line 4013
    .line 4014
    .line 4015
    move-result-object v0

    .line 4016
    invoke-virtual {v0}, Lat4;->l0()V

    .line 4017
    .line 4018
    .line 4019
    return v11

    .line 4020
    :goto_3d
    invoke-virtual/range {p0 .. p0}, Lpb5;->g0()Lat4;

    .line 4021
    .line 4022
    .line 4023
    move-result-object v1

    .line 4024
    invoke-virtual {v1}, Lat4;->l0()V

    .line 4025
    .line 4026
    .line 4027
    throw v0
.end method

.method public final J(Lq45;JZ)V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq v0, p4, :cond_0

    .line 3
    .line 4
    const-string v1, "_lte"

    .line 5
    .line 6
    :goto_0
    move-object v5, v1

    .line 7
    goto :goto_1

    .line 8
    :cond_0
    const-string v1, "_se"

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :goto_1
    iget-object v1, p0, Lpb5;->c:Lat4;

    .line 12
    .line 13
    invoke-static {v1}, Lpb5;->T(Lab5;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lq45;->n()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1, v2, v5}, Lat4;->r0(Ljava/lang/String;Ljava/lang/String;)Lxb5;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    iget-object v1, v1, Lxb5;->e:Ljava/lang/Object;

    .line 27
    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_1
    new-instance v2, Lxb5;

    .line 32
    .line 33
    invoke-virtual {p1}, Lq45;->n()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {p0}, Lpb5;->f()Lcom/google/android/gms/common/util/Clock;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v6

    .line 45
    check-cast v1, Ljava/lang/Long;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 48
    .line 49
    .line 50
    move-result-wide v8

    .line 51
    add-long/2addr v8, p2

    .line 52
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    const-string v4, "auto"

    .line 57
    .line 58
    invoke-direct/range {v2 .. v8}, Lxb5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_2
    :goto_2
    new-instance v2, Lxb5;

    .line 63
    .line 64
    invoke-virtual {p1}, Lq45;->n()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {p0}, Lpb5;->f()Lcom/google/android/gms/common/util/Clock;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 73
    .line 74
    .line 75
    move-result-wide v6

    .line 76
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    const-string v4, "auto"

    .line 81
    .line 82
    invoke-direct/range {v2 .. v8}, Lxb5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    :goto_3
    invoke-static {}, Lh55;->E()Lg55;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v1}, Lpn4;->b()V

    .line 90
    .line 91
    .line 92
    iget-object v3, v1, Lpn4;->o:Lrn4;

    .line 93
    .line 94
    check-cast v3, Lh55;

    .line 95
    .line 96
    invoke-virtual {v3, v5}, Lh55;->G(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lpb5;->f()Lcom/google/android/gms/common/util/Clock;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 104
    .line 105
    .line 106
    move-result-wide v3

    .line 107
    invoke-virtual {v1}, Lpn4;->b()V

    .line 108
    .line 109
    .line 110
    iget-object v6, v1, Lpn4;->o:Lrn4;

    .line 111
    .line 112
    check-cast v6, Lh55;

    .line 113
    .line 114
    invoke-virtual {v6, v3, v4}, Lh55;->F(J)V

    .line 115
    .line 116
    .line 117
    iget-object v3, v2, Lxb5;->e:Ljava/lang/Object;

    .line 118
    .line 119
    move-object v4, v3

    .line 120
    check-cast v4, Ljava/lang/Long;

    .line 121
    .line 122
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 123
    .line 124
    .line 125
    move-result-wide v6

    .line 126
    invoke-virtual {v1}, Lpn4;->b()V

    .line 127
    .line 128
    .line 129
    iget-object v4, v1, Lpn4;->o:Lrn4;

    .line 130
    .line 131
    check-cast v4, Lh55;

    .line 132
    .line 133
    invoke-virtual {v4, v6, v7}, Lh55;->J(J)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1}, Lpn4;->d()Lrn4;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    check-cast v1, Lh55;

    .line 141
    .line 142
    invoke-static {v5, p1}, Lub5;->h0(Ljava/lang/String;Lq45;)I

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    if-ltz v4, :cond_3

    .line 147
    .line 148
    invoke-virtual {p1}, Lpn4;->b()V

    .line 149
    .line 150
    .line 151
    iget-object p1, p1, Lpn4;->o:Lrn4;

    .line 152
    .line 153
    check-cast p1, Lu45;

    .line 154
    .line 155
    invoke-virtual {p1, v4, v1}, Lu45;->g0(ILh55;)V

    .line 156
    .line 157
    .line 158
    goto :goto_4

    .line 159
    :cond_3
    invoke-virtual {p1}, Lpn4;->b()V

    .line 160
    .line 161
    .line 162
    iget-object p1, p1, Lpn4;->o:Lrn4;

    .line 163
    .line 164
    check-cast p1, Lu45;

    .line 165
    .line 166
    invoke-virtual {p1, v1}, Lu45;->h0(Lh55;)V

    .line 167
    .line 168
    .line 169
    :goto_4
    const-wide/16 v4, 0x0

    .line 170
    .line 171
    cmp-long p1, p2, v4

    .line 172
    .line 173
    if-lez p1, :cond_5

    .line 174
    .line 175
    iget-object p1, p0, Lpb5;->c:Lat4;

    .line 176
    .line 177
    invoke-static {p1}, Lpb5;->T(Lab5;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1, v2}, Lat4;->q0(Lxb5;)Z

    .line 181
    .line 182
    .line 183
    if-eq v0, p4, :cond_4

    .line 184
    .line 185
    const-string p1, "lifetime"

    .line 186
    .line 187
    goto :goto_5

    .line 188
    :cond_4
    const-string p1, "session-scoped"

    .line 189
    .line 190
    :goto_5
    invoke-virtual {p0}, Lpb5;->c()La25;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    iget-object p0, p0, La25;->n:Lx15;

    .line 195
    .line 196
    const-string p2, "Updated engagement user property. scope, value"

    .line 197
    .line 198
    invoke-virtual {p0, p1, v3, p2}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    :cond_5
    return-void
.end method

.method public final K(Ls35;Ls35;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Ls35;->m()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "_e"

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lpb5;->j0()Lub5;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lpn4;->d()Lrn4;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lu35;

    .line 22
    .line 23
    const-string v2, "_sc"

    .line 24
    .line 25
    invoke-static {v2, v0}, Lub5;->F(Ljava/lang/String;Lu35;)Lc45;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v2, 0x0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    move-object v0, v2

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v0}, Lc45;->w()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :goto_0
    invoke-virtual {p0}, Lpb5;->j0()Lub5;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Lpn4;->d()Lrn4;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Lu35;

    .line 46
    .line 47
    const-string v4, "_pc"

    .line 48
    .line 49
    invoke-static {v4, v3}, Lub5;->F(Ljava/lang/String;Lu35;)Lc45;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    if-nez v3, :cond_1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    invoke-virtual {v3}, Lc45;->w()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    :goto_1
    if-eqz v2, :cond_5

    .line 61
    .line 62
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_5

    .line 67
    .line 68
    invoke-virtual {p1}, Ls35;->m()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lpb5;->j0()Lub5;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Lpn4;->d()Lrn4;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Lu35;

    .line 87
    .line 88
    const-string v1, "_et"

    .line 89
    .line 90
    invoke-static {v1, v0}, Lub5;->F(Ljava/lang/String;Lu35;)Lc45;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    if-eqz v0, :cond_4

    .line 95
    .line 96
    invoke-virtual {v0}, Lc45;->x()Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_4

    .line 101
    .line 102
    invoke-virtual {v0}, Lc45;->y()J

    .line 103
    .line 104
    .line 105
    move-result-wide v2

    .line 106
    const-wide/16 v4, 0x0

    .line 107
    .line 108
    cmp-long v2, v2, v4

    .line 109
    .line 110
    if-gtz v2, :cond_2

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_2
    invoke-virtual {v0}, Lc45;->y()J

    .line 114
    .line 115
    .line 116
    move-result-wide v2

    .line 117
    invoke-virtual {p0}, Lpb5;->j0()Lub5;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2}, Lpn4;->d()Lrn4;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    check-cast v0, Lu35;

    .line 125
    .line 126
    invoke-static {v1, v0}, Lub5;->F(Ljava/lang/String;Lu35;)Lc45;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    if-eqz v0, :cond_3

    .line 131
    .line 132
    invoke-virtual {v0}, Lc45;->y()J

    .line 133
    .line 134
    .line 135
    move-result-wide v6

    .line 136
    cmp-long v4, v6, v4

    .line 137
    .line 138
    if-lez v4, :cond_3

    .line 139
    .line 140
    invoke-virtual {v0}, Lc45;->y()J

    .line 141
    .line 142
    .line 143
    move-result-wide v4

    .line 144
    add-long/2addr v2, v4

    .line 145
    :cond_3
    invoke-virtual {p0}, Lpb5;->j0()Lub5;

    .line 146
    .line 147
    .line 148
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-static {p2, v1, v0}, Lub5;->D(Ls35;Ljava/lang/String;Ljava/lang/Long;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Lpb5;->j0()Lub5;

    .line 156
    .line 157
    .line 158
    const-wide/16 v0, 0x1

    .line 159
    .line 160
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    const-string p2, "_fr"

    .line 165
    .line 166
    invoke-static {p1, p2, p0}, Lub5;->D(Ls35;Ljava/lang/String;Ljava/lang/Long;)V

    .line 167
    .line 168
    .line 169
    :cond_4
    :goto_2
    const/4 p0, 0x1

    .line 170
    return p0

    .line 171
    :cond_5
    const/4 p0, 0x0

    .line 172
    return p0
.end method

.method public final L(Ls35;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p1}, Ls35;->g()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, -0x1

    .line 16
    if-ge v1, v2, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lc45;

    .line 23
    .line 24
    invoke-virtual {v2}, Lc45;->u()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move v1, v3

    .line 39
    :goto_1
    if-ne v1, v3, :cond_2

    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    invoke-virtual {p1, v1}, Ls35;->i(I)Lc45;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lc45;->C()D

    .line 47
    .line 48
    .line 49
    move-result-wide v2

    .line 50
    const-wide v4, 0x412e848000000000L    # 1000000.0

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    mul-double/2addr v2, v4

    .line 56
    const-wide/16 v6, 0x0

    .line 57
    .line 58
    cmpl-double v0, v2, v6

    .line 59
    .line 60
    if-nez v0, :cond_3

    .line 61
    .line 62
    invoke-virtual {p1, v1}, Ls35;->i(I)Lc45;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lc45;->y()J

    .line 67
    .line 68
    .line 69
    move-result-wide v2

    .line 70
    long-to-double v2, v2

    .line 71
    mul-double/2addr v2, v4

    .line 72
    :cond_3
    const-wide/high16 v4, 0x43e0000000000000L    # 9.223372036854776E18

    .line 73
    .line 74
    cmpg-double v0, v2, v4

    .line 75
    .line 76
    if-gtz v0, :cond_4

    .line 77
    .line 78
    const-wide/high16 v4, -0x3c20000000000000L    # -9.223372036854776E18

    .line 79
    .line 80
    cmpl-double v0, v2, v4

    .line 81
    .line 82
    if-ltz v0, :cond_4

    .line 83
    .line 84
    invoke-virtual {p1, v1}, Ls35;->l(I)V

    .line 85
    .line 86
    .line 87
    invoke-static {}, Lc45;->F()La45;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {p0, p2}, La45;->g(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    .line 95
    .line 96
    .line 97
    move-result-wide p2

    .line 98
    invoke-virtual {p0, p2, p3}, La45;->i(J)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lpn4;->d()Lrn4;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    check-cast p0, Lc45;

    .line 106
    .line 107
    invoke-virtual {p1, p0}, Ls35;->j(Lc45;)V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :cond_4
    const-string p1, "Data lost. Purchase "

    .line 112
    .line 113
    const-string v0, " is too big. appId"

    .line 114
    .line 115
    invoke-static {p1, p2, v0}, Ldi0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p0}, Lpb5;->c()La25;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    iget-object p0, p0, La25;->i:Lx15;

    .line 124
    .line 125
    invoke-static {p3}, La25;->D(Ljava/lang/String;)Ly15;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 130
    .line 131
    .line 132
    move-result-object p3

    .line 133
    invoke-virtual {p0, p2, p3, p1}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    return-void
.end method

.method public final M()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lpb5;->d()Lj45;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lj45;->v()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lpb5;->l0()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lpb5;->c:Lat4;

    .line 12
    .line 13
    invoke-static {v0}, Lpb5;->T(Lab5;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "select count(1) > 0 from raw_events"

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v1, v2}, Lat4;->R(Ljava/lang/String;[Ljava/lang/String;)J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    const-wide/16 v2, 0x0

    .line 24
    .line 25
    cmp-long v0, v0, v2

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object p0, p0, Lpb5;->c:Lat4;

    .line 31
    .line 32
    invoke-static {p0}, Lpb5;->T(Lab5;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lat4;->D()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-nez p0, :cond_1

    .line 44
    .line 45
    :goto_0
    const/4 p0, 0x1

    .line 46
    return p0

    .line 47
    :cond_1
    const/4 p0, 0x0

    .line 48
    return p0
.end method

.method public final N()V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "com.google.android.gms.measurement.AppMeasurementJobService"

    .line 4
    .line 5
    iget-object v2, v0, Lpb5;->g:Lub5;

    .line 6
    .line 7
    invoke-virtual {v0}, Lpb5;->d()Lj45;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-virtual {v3}, Lj45;->v()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lpb5;->l0()V

    .line 15
    .line 16
    .line 17
    iget-wide v3, v0, Lpb5;->o:J

    .line 18
    .line 19
    const-wide/16 v5, 0x0

    .line 20
    .line 21
    cmp-long v3, v3, v5

    .line 22
    .line 23
    if-lez v3, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Lpb5;->f()Lcom/google/android/gms/common/util/Clock;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 30
    .line 31
    .line 32
    move-result-wide v3

    .line 33
    iget-wide v7, v0, Lpb5;->o:J

    .line 34
    .line 35
    sub-long/2addr v3, v7

    .line 36
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    .line 37
    .line 38
    .line 39
    move-result-wide v3

    .line 40
    const-wide/32 v7, 0x36ee80

    .line 41
    .line 42
    .line 43
    sub-long/2addr v7, v3

    .line 44
    cmp-long v3, v7, v5

    .line 45
    .line 46
    if-lez v3, :cond_0

    .line 47
    .line 48
    invoke-virtual {v0}, Lpb5;->c()La25;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iget-object v1, v1, La25;->n:Lx15;

    .line 53
    .line 54
    const-string v2, "Upload has been suspended. Will update scheduling later in approximately ms"

    .line 55
    .line 56
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v1, v3, v2}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lpb5;->h0()Lq25;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v1}, Lq25;->a()V

    .line 68
    .line 69
    .line 70
    iget-object v0, v0, Lpb5;->e:Lqa5;

    .line 71
    .line 72
    invoke-static {v0}, Lpb5;->T(Lab5;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Lqa5;->A()V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_0
    iput-wide v5, v0, Lpb5;->o:J

    .line 80
    .line 81
    :cond_1
    iget-object v3, v0, Lpb5;->l:Lr45;

    .line 82
    .line 83
    invoke-virtual {v3}, Lr45;->h()Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eqz v3, :cond_18

    .line 88
    .line 89
    invoke-virtual {v0}, Lpb5;->M()Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-eqz v3, :cond_18

    .line 94
    .line 95
    invoke-virtual {v0}, Lpb5;->f()Lcom/google/android/gms/common/util/Clock;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 100
    .line 101
    .line 102
    move-result-wide v3

    .line 103
    invoke-virtual {v0}, Lpb5;->e0()Lds4;

    .line 104
    .line 105
    .line 106
    sget-object v7, Le05;->O:Ld05;

    .line 107
    .line 108
    const/4 v8, 0x0

    .line 109
    invoke-virtual {v7, v8}, Ld05;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    check-cast v7, Ljava/lang/Long;

    .line 114
    .line 115
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 116
    .line 117
    .line 118
    move-result-wide v9

    .line 119
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->max(JJ)J

    .line 120
    .line 121
    .line 122
    move-result-wide v9

    .line 123
    iget-object v7, v0, Lpb5;->c:Lat4;

    .line 124
    .line 125
    invoke-static {v7}, Lpb5;->T(Lab5;)V

    .line 126
    .line 127
    .line 128
    const-string v11, "select count(1) > 0 from raw_events where realtime = 1"

    .line 129
    .line 130
    invoke-virtual {v7, v11, v8}, Lat4;->R(Ljava/lang/String;[Ljava/lang/String;)J

    .line 131
    .line 132
    .line 133
    move-result-wide v11

    .line 134
    cmp-long v7, v11, v5

    .line 135
    .line 136
    if-eqz v7, :cond_2

    .line 137
    .line 138
    :goto_0
    const/4 v7, 0x1

    .line 139
    goto :goto_1

    .line 140
    :cond_2
    iget-object v7, v0, Lpb5;->c:Lat4;

    .line 141
    .line 142
    invoke-static {v7}, Lpb5;->T(Lab5;)V

    .line 143
    .line 144
    .line 145
    const-string v13, "select count(1) > 0 from queue where has_realtime = 1"

    .line 146
    .line 147
    invoke-virtual {v7, v13, v8}, Lat4;->R(Ljava/lang/String;[Ljava/lang/String;)J

    .line 148
    .line 149
    .line 150
    move-result-wide v13

    .line 151
    cmp-long v7, v13, v5

    .line 152
    .line 153
    if-eqz v7, :cond_3

    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_3
    const/4 v7, 0x0

    .line 157
    :goto_1
    if-eqz v7, :cond_5

    .line 158
    .line 159
    invoke-virtual {v0}, Lpb5;->e0()Lds4;

    .line 160
    .line 161
    .line 162
    move-result-object v13

    .line 163
    const-string v14, "debug.firebase.analytics.app"

    .line 164
    .line 165
    invoke-virtual {v13, v14}, Lds4;->z(Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v13

    .line 169
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 170
    .line 171
    .line 172
    move-result v14

    .line 173
    if-nez v14, :cond_4

    .line 174
    .line 175
    const-string v14, ".none."

    .line 176
    .line 177
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v13

    .line 181
    if-nez v13, :cond_4

    .line 182
    .line 183
    invoke-virtual {v0}, Lpb5;->e0()Lds4;

    .line 184
    .line 185
    .line 186
    sget-object v13, Le05;->J:Ld05;

    .line 187
    .line 188
    invoke-virtual {v13, v8}, Ld05;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v13

    .line 192
    check-cast v13, Ljava/lang/Long;

    .line 193
    .line 194
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    .line 195
    .line 196
    .line 197
    move-result-wide v13

    .line 198
    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->max(JJ)J

    .line 199
    .line 200
    .line 201
    move-result-wide v13

    .line 202
    goto :goto_2

    .line 203
    :cond_4
    invoke-virtual {v0}, Lpb5;->e0()Lds4;

    .line 204
    .line 205
    .line 206
    sget-object v13, Le05;->I:Ld05;

    .line 207
    .line 208
    invoke-virtual {v13, v8}, Ld05;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v13

    .line 212
    check-cast v13, Ljava/lang/Long;

    .line 213
    .line 214
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    .line 215
    .line 216
    .line 217
    move-result-wide v13

    .line 218
    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->max(JJ)J

    .line 219
    .line 220
    .line 221
    move-result-wide v13

    .line 222
    goto :goto_2

    .line 223
    :cond_5
    invoke-virtual {v0}, Lpb5;->e0()Lds4;

    .line 224
    .line 225
    .line 226
    sget-object v13, Le05;->H:Ld05;

    .line 227
    .line 228
    invoke-virtual {v13, v8}, Ld05;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v13

    .line 232
    check-cast v13, Ljava/lang/Long;

    .line 233
    .line 234
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    .line 235
    .line 236
    .line 237
    move-result-wide v13

    .line 238
    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->max(JJ)J

    .line 239
    .line 240
    .line 241
    move-result-wide v13

    .line 242
    :goto_2
    iget-object v15, v0, Lpb5;->i:Lr95;

    .line 243
    .line 244
    iget-object v15, v15, Lr95;->h:Ly25;

    .line 245
    .line 246
    invoke-virtual {v15}, Ly25;->a()J

    .line 247
    .line 248
    .line 249
    move-result-wide v15

    .line 250
    iget-object v12, v0, Lpb5;->i:Lr95;

    .line 251
    .line 252
    iget-object v12, v12, Lr95;->i:Ly25;

    .line 253
    .line 254
    invoke-virtual {v12}, Ly25;->a()J

    .line 255
    .line 256
    .line 257
    move-result-wide v17

    .line 258
    iget-object v12, v0, Lpb5;->c:Lat4;

    .line 259
    .line 260
    invoke-static {v12}, Lpb5;->T(Lab5;)V

    .line 261
    .line 262
    .line 263
    const-string v11, "select max(bundle_end_timestamp) from queue"

    .line 264
    .line 265
    invoke-virtual {v12, v11, v8, v5, v6}, Lat4;->S(Ljava/lang/String;[Ljava/lang/String;J)J

    .line 266
    .line 267
    .line 268
    move-result-wide v11

    .line 269
    iget-object v5, v0, Lpb5;->c:Lat4;

    .line 270
    .line 271
    invoke-static {v5}, Lpb5;->T(Lab5;)V

    .line 272
    .line 273
    .line 274
    const-string v6, "select max(timestamp) from raw_events"

    .line 275
    .line 276
    move-wide/from16 v21, v3

    .line 277
    .line 278
    const-wide/16 v3, 0x0

    .line 279
    .line 280
    invoke-virtual {v5, v6, v8, v3, v4}, Lat4;->S(Ljava/lang/String;[Ljava/lang/String;J)J

    .line 281
    .line 282
    .line 283
    move-result-wide v5

    .line 284
    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 285
    .line 286
    .line 287
    move-result-wide v5

    .line 288
    cmp-long v11, v5, v3

    .line 289
    .line 290
    if-nez v11, :cond_8

    .line 291
    .line 292
    :cond_6
    const-wide/16 v5, 0x0

    .line 293
    .line 294
    :cond_7
    :goto_3
    const-wide/16 v19, 0x0

    .line 295
    .line 296
    goto/16 :goto_7

    .line 297
    .line 298
    :cond_8
    sub-long v5, v5, v21

    .line 299
    .line 300
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    .line 301
    .line 302
    .line 303
    move-result-wide v3

    .line 304
    sub-long v3, v21, v3

    .line 305
    .line 306
    sub-long v15, v15, v21

    .line 307
    .line 308
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(J)J

    .line 309
    .line 310
    .line 311
    move-result-wide v5

    .line 312
    sub-long v5, v21, v5

    .line 313
    .line 314
    sub-long v17, v17, v21

    .line 315
    .line 316
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->abs(J)J

    .line 317
    .line 318
    .line 319
    move-result-wide v11

    .line 320
    sub-long v11, v21, v11

    .line 321
    .line 322
    add-long/2addr v9, v3

    .line 323
    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->max(JJ)J

    .line 324
    .line 325
    .line 326
    move-result-wide v5

    .line 327
    if-eqz v7, :cond_9

    .line 328
    .line 329
    const-wide/16 v19, 0x0

    .line 330
    .line 331
    cmp-long v7, v5, v19

    .line 332
    .line 333
    if-lez v7, :cond_9

    .line 334
    .line 335
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 336
    .line 337
    .line 338
    move-result-wide v9

    .line 339
    add-long/2addr v9, v13

    .line 340
    :cond_9
    invoke-static {v2}, Lpb5;->T(Lab5;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v2, v5, v6, v13, v14}, Lub5;->d0(JJ)Z

    .line 344
    .line 345
    .line 346
    move-result v7

    .line 347
    if-nez v7, :cond_a

    .line 348
    .line 349
    add-long/2addr v5, v13

    .line 350
    :goto_4
    const-wide/16 v19, 0x0

    .line 351
    .line 352
    goto :goto_5

    .line 353
    :cond_a
    move-wide v5, v9

    .line 354
    goto :goto_4

    .line 355
    :goto_5
    cmp-long v7, v11, v19

    .line 356
    .line 357
    if-eqz v7, :cond_7

    .line 358
    .line 359
    cmp-long v3, v11, v3

    .line 360
    .line 361
    if-ltz v3, :cond_7

    .line 362
    .line 363
    const/4 v3, 0x0

    .line 364
    :goto_6
    invoke-virtual {v0}, Lpb5;->e0()Lds4;

    .line 365
    .line 366
    .line 367
    sget-object v4, Le05;->Q:Ld05;

    .line 368
    .line 369
    invoke-virtual {v4, v8}, Ld05;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v4

    .line 373
    check-cast v4, Ljava/lang/Integer;

    .line 374
    .line 375
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 376
    .line 377
    .line 378
    move-result v4

    .line 379
    const/4 v7, 0x0

    .line 380
    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    .line 381
    .line 382
    .line 383
    move-result v4

    .line 384
    const/16 v7, 0x14

    .line 385
    .line 386
    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    .line 387
    .line 388
    .line 389
    move-result v4

    .line 390
    if-ge v3, v4, :cond_6

    .line 391
    .line 392
    const-wide/16 v9, 0x1

    .line 393
    .line 394
    shl-long/2addr v9, v3

    .line 395
    invoke-virtual {v0}, Lpb5;->e0()Lds4;

    .line 396
    .line 397
    .line 398
    sget-object v4, Le05;->P:Ld05;

    .line 399
    .line 400
    invoke-virtual {v4, v8}, Ld05;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v4

    .line 404
    check-cast v4, Ljava/lang/Long;

    .line 405
    .line 406
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 407
    .line 408
    .line 409
    move-result-wide v13

    .line 410
    move-wide v15, v9

    .line 411
    const-wide/16 v8, 0x0

    .line 412
    .line 413
    invoke-static {v8, v9, v13, v14}, Ljava/lang/Math;->max(JJ)J

    .line 414
    .line 415
    .line 416
    move-result-wide v13

    .line 417
    mul-long/2addr v13, v15

    .line 418
    add-long/2addr v5, v13

    .line 419
    cmp-long v7, v5, v11

    .line 420
    .line 421
    if-lez v7, :cond_b

    .line 422
    .line 423
    goto/16 :goto_3

    .line 424
    .line 425
    :cond_b
    add-int/lit8 v3, v3, 0x1

    .line 426
    .line 427
    const/4 v8, 0x0

    .line 428
    goto :goto_6

    .line 429
    :goto_7
    cmp-long v3, v5, v19

    .line 430
    .line 431
    if-nez v3, :cond_c

    .line 432
    .line 433
    invoke-virtual {v0}, Lpb5;->c()La25;

    .line 434
    .line 435
    .line 436
    move-result-object v1

    .line 437
    iget-object v1, v1, La25;->n:Lx15;

    .line 438
    .line 439
    const-string v2, "Next upload time is 0"

    .line 440
    .line 441
    invoke-virtual {v1, v2}, Lx15;->a(Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v0}, Lpb5;->h0()Lq25;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    invoke-virtual {v1}, Lq25;->a()V

    .line 449
    .line 450
    .line 451
    iget-object v0, v0, Lpb5;->e:Lqa5;

    .line 452
    .line 453
    invoke-static {v0}, Lpb5;->T(Lab5;)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v0}, Lqa5;->A()V

    .line 457
    .line 458
    .line 459
    return-void

    .line 460
    :cond_c
    iget-object v3, v0, Lpb5;->b:Li25;

    .line 461
    .line 462
    invoke-static {v3}, Lpb5;->T(Lab5;)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v3}, Li25;->z()Z

    .line 466
    .line 467
    .line 468
    move-result v3

    .line 469
    if-eqz v3, :cond_16

    .line 470
    .line 471
    iget-object v3, v0, Lpb5;->i:Lr95;

    .line 472
    .line 473
    iget-object v3, v3, Lr95;->g:Ly25;

    .line 474
    .line 475
    invoke-virtual {v3}, Ly25;->a()J

    .line 476
    .line 477
    .line 478
    move-result-wide v7

    .line 479
    invoke-virtual {v0}, Lpb5;->e0()Lds4;

    .line 480
    .line 481
    .line 482
    sget-object v3, Le05;->G:Ld05;

    .line 483
    .line 484
    const/4 v4, 0x0

    .line 485
    invoke-virtual {v3, v4}, Ld05;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    move-result-object v3

    .line 489
    check-cast v3, Ljava/lang/Long;

    .line 490
    .line 491
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 492
    .line 493
    .line 494
    move-result-wide v9

    .line 495
    const-wide/16 v11, 0x0

    .line 496
    .line 497
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(JJ)J

    .line 498
    .line 499
    .line 500
    move-result-wide v9

    .line 501
    invoke-static {v2}, Lpb5;->T(Lab5;)V

    .line 502
    .line 503
    .line 504
    invoke-virtual {v2, v7, v8, v9, v10}, Lub5;->d0(JJ)Z

    .line 505
    .line 506
    .line 507
    move-result v2

    .line 508
    if-nez v2, :cond_d

    .line 509
    .line 510
    add-long/2addr v7, v9

    .line 511
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 512
    .line 513
    .line 514
    move-result-wide v5

    .line 515
    :cond_d
    invoke-virtual {v0}, Lpb5;->h0()Lq25;

    .line 516
    .line 517
    .line 518
    move-result-object v2

    .line 519
    invoke-virtual {v2}, Lq25;->a()V

    .line 520
    .line 521
    .line 522
    invoke-virtual {v0}, Lpb5;->f()Lcom/google/android/gms/common/util/Clock;

    .line 523
    .line 524
    .line 525
    move-result-object v2

    .line 526
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 527
    .line 528
    .line 529
    move-result-wide v2

    .line 530
    sub-long/2addr v5, v2

    .line 531
    const-wide/16 v8, 0x0

    .line 532
    .line 533
    cmp-long v2, v5, v8

    .line 534
    .line 535
    if-gtz v2, :cond_e

    .line 536
    .line 537
    invoke-virtual {v0}, Lpb5;->e0()Lds4;

    .line 538
    .line 539
    .line 540
    sget-object v2, Le05;->K:Ld05;

    .line 541
    .line 542
    const/4 v4, 0x0

    .line 543
    invoke-virtual {v2, v4}, Ld05;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    .line 545
    .line 546
    move-result-object v2

    .line 547
    check-cast v2, Ljava/lang/Long;

    .line 548
    .line 549
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 550
    .line 551
    .line 552
    move-result-wide v2

    .line 553
    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 554
    .line 555
    .line 556
    move-result-wide v5

    .line 557
    iget-object v2, v0, Lpb5;->i:Lr95;

    .line 558
    .line 559
    iget-object v2, v2, Lr95;->h:Ly25;

    .line 560
    .line 561
    invoke-virtual {v0}, Lpb5;->f()Lcom/google/android/gms/common/util/Clock;

    .line 562
    .line 563
    .line 564
    move-result-object v3

    .line 565
    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 566
    .line 567
    .line 568
    move-result-wide v7

    .line 569
    invoke-virtual {v2, v7, v8}, Ly25;->b(J)V

    .line 570
    .line 571
    .line 572
    :cond_e
    invoke-virtual {v0}, Lpb5;->c()La25;

    .line 573
    .line 574
    .line 575
    move-result-object v2

    .line 576
    iget-object v2, v2, La25;->n:Lx15;

    .line 577
    .line 578
    const-string v3, "Upload scheduled in approximately ms"

    .line 579
    .line 580
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 581
    .line 582
    .line 583
    move-result-object v7

    .line 584
    invoke-virtual {v2, v7, v3}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 585
    .line 586
    .line 587
    iget-object v0, v0, Lpb5;->e:Lqa5;

    .line 588
    .line 589
    invoke-static {v0}, Lpb5;->T(Lab5;)V

    .line 590
    .line 591
    .line 592
    invoke-virtual {v0}, Lab5;->w()V

    .line 593
    .line 594
    .line 595
    iget-object v2, v0, Lib0;->a:Ljava/lang/Object;

    .line 596
    .line 597
    check-cast v2, Lr45;

    .line 598
    .line 599
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 600
    .line 601
    .line 602
    iget-object v3, v2, Lr45;->f:La25;

    .line 603
    .line 604
    iget-object v7, v2, Lr45;->a:Landroid/content/Context;

    .line 605
    .line 606
    invoke-static {v7}, Lac5;->p0(Landroid/content/Context;)Z

    .line 607
    .line 608
    .line 609
    move-result v8

    .line 610
    if-nez v8, :cond_f

    .line 611
    .line 612
    invoke-static {v3}, Lr45;->l(Lq55;)V

    .line 613
    .line 614
    .line 615
    iget-object v8, v3, La25;->m:Lx15;

    .line 616
    .line 617
    const-string v9, "Receiver not registered/enabled"

    .line 618
    .line 619
    invoke-virtual {v8, v9}, Lx15;->a(Ljava/lang/String;)V

    .line 620
    .line 621
    .line 622
    :cond_f
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    .line 624
    .line 625
    :try_start_0
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 626
    .line 627
    .line 628
    move-result-object v8

    .line 629
    if-nez v8, :cond_10

    .line 630
    .line 631
    :catch_0
    const/4 v10, 0x0

    .line 632
    goto :goto_8

    .line 633
    :cond_10
    new-instance v9, Landroid/content/ComponentName;

    .line 634
    .line 635
    invoke-direct {v9, v7, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    .line 637
    .line 638
    const/4 v10, 0x0

    .line 639
    :try_start_1
    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    .line 640
    .line 641
    .line 642
    move-result-object v8

    .line 643
    if-eqz v8, :cond_11

    .line 644
    .line 645
    iget-boolean v8, v8, Landroid/content/pm/ServiceInfo;->enabled:Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 646
    .line 647
    if-eqz v8, :cond_11

    .line 648
    .line 649
    goto :goto_9

    .line 650
    :catch_1
    :cond_11
    :goto_8
    invoke-static {v3}, Lr45;->l(Lq55;)V

    .line 651
    .line 652
    .line 653
    iget-object v8, v3, La25;->m:Lx15;

    .line 654
    .line 655
    const-string v9, "Service not registered/enabled"

    .line 656
    .line 657
    invoke-virtual {v8, v9}, Lx15;->a(Ljava/lang/String;)V

    .line 658
    .line 659
    .line 660
    :goto_9
    invoke-virtual {v0}, Lqa5;->A()V

    .line 661
    .line 662
    .line 663
    invoke-static {v3}, Lr45;->l(Lq55;)V

    .line 664
    .line 665
    .line 666
    iget-object v3, v3, La25;->n:Lx15;

    .line 667
    .line 668
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 669
    .line 670
    .line 671
    move-result-object v8

    .line 672
    const-string v9, "Scheduling upload, millis"

    .line 673
    .line 674
    invoke-virtual {v3, v8, v9}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 675
    .line 676
    .line 677
    iget-object v2, v2, Lr45;->k:Lcom/google/android/gms/common/util/Clock;

    .line 678
    .line 679
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 680
    .line 681
    .line 682
    sget-object v2, Le05;->L:Ld05;

    .line 683
    .line 684
    const/4 v4, 0x0

    .line 685
    invoke-virtual {v2, v4}, Ld05;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    .line 687
    .line 688
    move-result-object v2

    .line 689
    check-cast v2, Ljava/lang/Long;

    .line 690
    .line 691
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 692
    .line 693
    .line 694
    move-result-wide v2

    .line 695
    const-wide/16 v8, 0x0

    .line 696
    .line 697
    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 698
    .line 699
    .line 700
    move-result-wide v2

    .line 701
    cmp-long v2, v5, v2

    .line 702
    .line 703
    if-gez v2, :cond_13

    .line 704
    .line 705
    invoke-virtual {v0}, Lqa5;->z()Let4;

    .line 706
    .line 707
    .line 708
    move-result-object v2

    .line 709
    iget-wide v2, v2, Let4;->c:J

    .line 710
    .line 711
    cmp-long v2, v2, v8

    .line 712
    .line 713
    if-eqz v2, :cond_12

    .line 714
    .line 715
    goto :goto_a

    .line 716
    :cond_12
    invoke-virtual {v0}, Lqa5;->z()Let4;

    .line 717
    .line 718
    .line 719
    move-result-object v2

    .line 720
    invoke-virtual {v2, v5, v6}, Let4;->b(J)V

    .line 721
    .line 722
    .line 723
    :cond_13
    :goto_a
    new-instance v2, Landroid/content/ComponentName;

    .line 724
    .line 725
    invoke-direct {v2, v7, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 726
    .line 727
    .line 728
    invoke-virtual {v0}, Lqa5;->C()I

    .line 729
    .line 730
    .line 731
    move-result v0

    .line 732
    new-instance v1, Landroid/os/PersistableBundle;

    .line 733
    .line 734
    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    .line 735
    .line 736
    .line 737
    const-string v3, "action"

    .line 738
    .line 739
    const-string v8, "com.google.android.gms.measurement.UPLOAD"

    .line 740
    .line 741
    invoke-virtual {v1, v3, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    .line 743
    .line 744
    new-instance v3, Landroid/app/job/JobInfo$Builder;

    .line 745
    .line 746
    invoke-direct {v3, v0, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 747
    .line 748
    .line 749
    invoke-virtual {v3, v5, v6}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 750
    .line 751
    .line 752
    move-result-object v0

    .line 753
    add-long/2addr v5, v5

    .line 754
    invoke-virtual {v0, v5, v6}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    .line 755
    .line 756
    .line 757
    move-result-object v0

    .line 758
    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    .line 759
    .line 760
    .line 761
    move-result-object v0

    .line 762
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 763
    .line 764
    .line 765
    move-result-object v1

    .line 766
    sget-object v0, Lxv4;->a:Ljava/lang/reflect/Method;

    .line 767
    .line 768
    const-string v0, "jobscheduler"

    .line 769
    .line 770
    invoke-virtual {v7, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 771
    .line 772
    .line 773
    move-result-object v0

    .line 774
    move-object v2, v0

    .line 775
    check-cast v2, Landroid/app/job/JobScheduler;

    .line 776
    .line 777
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 778
    .line 779
    .line 780
    sget-object v3, Lxv4;->a:Ljava/lang/reflect/Method;

    .line 781
    .line 782
    if-eqz v3, :cond_15

    .line 783
    .line 784
    const-string v0, "android.permission.UPDATE_DEVICE_STATS"

    .line 785
    .line 786
    invoke-virtual {v7, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    .line 787
    .line 788
    .line 789
    move-result v0

    .line 790
    if-nez v0, :cond_15

    .line 791
    .line 792
    sget-object v0, Lxv4;->b:Ljava/lang/reflect/Method;

    .line 793
    .line 794
    if-eqz v0, :cond_14

    .line 795
    .line 796
    :try_start_2
    const-class v5, Landroid/os/UserHandle;

    .line 797
    .line 798
    const/4 v4, 0x0

    .line 799
    invoke-virtual {v0, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    .line 801
    .line 802
    move-result-object v0

    .line 803
    check-cast v0, Ljava/lang/Integer;

    .line 804
    .line 805
    if-eqz v0, :cond_14

    .line 806
    .line 807
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 808
    .line 809
    .line 810
    move-result v11
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2

    .line 811
    goto :goto_d

    .line 812
    :catch_2
    move-exception v0

    .line 813
    goto :goto_c

    .line 814
    :catch_3
    move-exception v0

    .line 815
    goto :goto_c

    .line 816
    :cond_14
    :goto_b
    move v11, v10

    .line 817
    goto :goto_d

    .line 818
    :goto_c
    const/4 v4, 0x6

    .line 819
    const-string v5, "JobSchedulerCompat"

    .line 820
    .line 821
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 822
    .line 823
    .line 824
    move-result v4

    .line 825
    if-eqz v4, :cond_14

    .line 826
    .line 827
    const-string v4, "myUserId invocation illegal"

    .line 828
    .line 829
    invoke-static {v5, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 830
    .line 831
    .line 832
    goto :goto_b

    .line 833
    :goto_d
    const-string v4, "UploadAlarm"

    .line 834
    .line 835
    const-string v0, "com.google.android.gms"

    .line 836
    .line 837
    :try_start_3
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 838
    .line 839
    .line 840
    move-result-object v5

    .line 841
    filled-new-array {v1, v0, v5, v4}, [Ljava/lang/Object;

    .line 842
    .line 843
    .line 844
    move-result-object v0

    .line 845
    invoke-virtual {v3, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    .line 847
    .line 848
    move-result-object v0

    .line 849
    check-cast v0, Ljava/lang/Integer;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_4

    .line 850
    .line 851
    goto :goto_f

    .line 852
    :catch_4
    move-exception v0

    .line 853
    goto :goto_e

    .line 854
    :catch_5
    move-exception v0

    .line 855
    :goto_e
    const-string v3, "error calling scheduleAsPackage"

    .line 856
    .line 857
    invoke-static {v4, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 858
    .line 859
    .line 860
    invoke-virtual {v2, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 861
    .line 862
    .line 863
    :goto_f
    return-void

    .line 864
    :cond_15
    invoke-virtual {v2, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 865
    .line 866
    .line 867
    return-void

    .line 868
    :cond_16
    invoke-virtual {v0}, Lpb5;->c()La25;

    .line 869
    .line 870
    .line 871
    move-result-object v1

    .line 872
    iget-object v1, v1, La25;->n:Lx15;

    .line 873
    .line 874
    const-string v2, "No network"

    .line 875
    .line 876
    invoke-virtual {v1, v2}, Lx15;->a(Ljava/lang/String;)V

    .line 877
    .line 878
    .line 879
    invoke-virtual {v0}, Lpb5;->h0()Lq25;

    .line 880
    .line 881
    .line 882
    move-result-object v1

    .line 883
    iget-object v2, v1, Lq25;->a:Lpb5;

    .line 884
    .line 885
    invoke-virtual {v2}, Lpb5;->l0()V

    .line 886
    .line 887
    .line 888
    invoke-virtual {v2}, Lpb5;->d()Lj45;

    .line 889
    .line 890
    .line 891
    move-result-object v3

    .line 892
    invoke-virtual {v3}, Lj45;->v()V

    .line 893
    .line 894
    .line 895
    iget-boolean v3, v1, Lq25;->b:Z

    .line 896
    .line 897
    if-eqz v3, :cond_17

    .line 898
    .line 899
    goto :goto_10

    .line 900
    :cond_17
    iget-object v3, v2, Lpb5;->l:Lr45;

    .line 901
    .line 902
    iget-object v3, v3, Lr45;->a:Landroid/content/Context;

    .line 903
    .line 904
    new-instance v4, Landroid/content/IntentFilter;

    .line 905
    .line 906
    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 907
    .line 908
    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 909
    .line 910
    .line 911
    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 912
    .line 913
    .line 914
    iget-object v3, v2, Lpb5;->b:Li25;

    .line 915
    .line 916
    invoke-static {v3}, Lpb5;->T(Lab5;)V

    .line 917
    .line 918
    .line 919
    invoke-virtual {v3}, Li25;->z()Z

    .line 920
    .line 921
    .line 922
    move-result v3

    .line 923
    iput-boolean v3, v1, Lq25;->c:Z

    .line 924
    .line 925
    invoke-virtual {v2}, Lpb5;->c()La25;

    .line 926
    .line 927
    .line 928
    move-result-object v2

    .line 929
    iget-object v2, v2, La25;->n:Lx15;

    .line 930
    .line 931
    iget-boolean v3, v1, Lq25;->c:Z

    .line 932
    .line 933
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 934
    .line 935
    .line 936
    move-result-object v3

    .line 937
    const-string v4, "Registering connectivity change receiver. Network connected"

    .line 938
    .line 939
    invoke-virtual {v2, v3, v4}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 940
    .line 941
    .line 942
    const/4 v2, 0x1

    .line 943
    iput-boolean v2, v1, Lq25;->b:Z

    .line 944
    .line 945
    :goto_10
    iget-object v0, v0, Lpb5;->e:Lqa5;

    .line 946
    .line 947
    invoke-static {v0}, Lpb5;->T(Lab5;)V

    .line 948
    .line 949
    .line 950
    invoke-virtual {v0}, Lqa5;->A()V

    .line 951
    .line 952
    .line 953
    return-void

    .line 954
    :cond_18
    invoke-virtual {v0}, Lpb5;->c()La25;

    .line 955
    .line 956
    .line 957
    move-result-object v1

    .line 958
    iget-object v1, v1, La25;->n:Lx15;

    .line 959
    .line 960
    const-string v2, "Nothing to upload or uploading impossible"

    .line 961
    .line 962
    invoke-virtual {v1, v2}, Lx15;->a(Ljava/lang/String;)V

    .line 963
    .line 964
    .line 965
    invoke-virtual {v0}, Lpb5;->h0()Lq25;

    .line 966
    .line 967
    .line 968
    move-result-object v1

    .line 969
    invoke-virtual {v1}, Lq25;->a()V

    .line 970
    .line 971
    .line 972
    iget-object v0, v0, Lpb5;->e:Lqa5;

    .line 973
    .line 974
    invoke-static {v0}, Lpb5;->T(Lab5;)V

    .line 975
    .line 976
    .line 977
    invoke-virtual {v0}, Lqa5;->A()V

    .line 978
    .line 979
    .line 980
    return-void
.end method

.method public final O()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lpb5;->d()Lj45;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lj45;->v()V

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lpb5;->t:Z

    .line 9
    .line 10
    if-nez v0, :cond_3

    .line 11
    .line 12
    iget-boolean v0, p0, Lpb5;->u:Z

    .line 13
    .line 14
    if-nez v0, :cond_3

    .line 15
    .line 16
    iget-boolean v0, p0, Lpb5;->v:Z

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-virtual {p0}, Lpb5;->c()La25;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v0, v0, La25;->n:Lx15;

    .line 26
    .line 27
    const-string v1, "Stopping uploading service(s)"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lx15;->a(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lpb5;->p:Ljava/util/ArrayList;

    .line 33
    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    const/4 v2, 0x0

    .line 42
    :goto_0
    if-ge v2, v1, :cond_2

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    add-int/lit8 v2, v2, 0x1

    .line 49
    .line 50
    check-cast v3, Ljava/lang/Runnable;

    .line 51
    .line 52
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    iget-object p0, p0, Lpb5;->p:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    check-cast p0, Ljava/util/List;

    .line 63
    .line 64
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lpb5;->c()La25;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget-object v0, v0, La25;->n:Lx15;

    .line 73
    .line 74
    iget-boolean v1, p0, Lpb5;->t:Z

    .line 75
    .line 76
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    iget-boolean v2, p0, Lpb5;->u:Z

    .line 81
    .line 82
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    iget-boolean p0, p0, Lpb5;->v:Z

    .line 87
    .line 88
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    const-string v3, "Not stopping services. fetch, network, upload"

    .line 93
    .line 94
    invoke-virtual {v0, v3, v1, v2, p0}, Lx15;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public final P(Lm25;)Ljava/lang/Boolean;
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lm25;->Q()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    const-wide/32 v2, -0x80000000

    .line 6
    .line 7
    .line 8
    cmp-long v0, v0, v2

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iget-object p0, p0, Lpb5;->l:Lr45;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    :try_start_1
    iget-object p0, p0, Lr45;->a:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {p0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p1}, Lm25;->E()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 30
    .line 31
    invoke-virtual {p1}, Lm25;->Q()J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    int-to-long p0, p0

    .line 36
    cmp-long p0, v0, p0

    .line 37
    .line 38
    if-nez p0, :cond_1

    .line 39
    .line 40
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_0
    iget-object p0, p0, Lr45;->a:Landroid/content/Context;

    .line 44
    .line 45
    invoke-static {p0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p1}, Lm25;->E()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {p1}, Lm25;->O()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-eqz p1, :cond_1

    .line 64
    .line 65
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    if-eqz p0, :cond_1

    .line 70
    .line 71
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 72
    .line 73
    return-object p0

    .line 74
    :cond_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 75
    .line 76
    return-object p0

    .line 77
    :catch_0
    const/4 p0, 0x0

    .line 78
    return-object p0
.end method

.method public final Q(Ljava/lang/String;)Lvc5;
    .locals 42

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lpb5;->c:Lat4;

    .line 6
    .line 7
    invoke-static {v2}, Lpb5;->T(Lab5;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2, v1}, Lat4;->z0(Ljava/lang/String;)Lm25;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    iget-object v4, v2, Lm25;->a:Lr45;

    .line 18
    .line 19
    invoke-virtual {v2}, Lm25;->O()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_0

    .line 28
    .line 29
    goto/16 :goto_0

    .line 30
    .line 31
    :cond_0
    invoke-virtual {v0, v2}, Lpb5;->P(Lm25;)Ljava/lang/Boolean;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    if-eqz v5, :cond_1

    .line 36
    .line 37
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-nez v5, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0}, Lpb5;->c()La25;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v0, v0, La25;->f:Lx15;

    .line 48
    .line 49
    invoke-static {v1}, La25;->D(Ljava/lang/String;)Ly15;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const-string v2, "App version does not match; dropping. appId"

    .line 54
    .line 55
    invoke-virtual {v0, v1, v2}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-object v3

    .line 59
    :cond_1
    new-instance v0, Lvc5;

    .line 60
    .line 61
    invoke-virtual {v2}, Lm25;->H()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    move-object v5, v3

    .line 66
    invoke-virtual {v2}, Lm25;->O()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v2}, Lm25;->Q()J

    .line 71
    .line 72
    .line 73
    move-result-wide v6

    .line 74
    iget-object v8, v4, Lr45;->g:Lj45;

    .line 75
    .line 76
    invoke-static {v8}, Lr45;->l(Lq55;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v8}, Lj45;->v()V

    .line 80
    .line 81
    .line 82
    move-wide v7, v6

    .line 83
    iget-object v6, v2, Lm25;->l:Ljava/lang/String;

    .line 84
    .line 85
    iget-object v9, v4, Lr45;->g:Lj45;

    .line 86
    .line 87
    invoke-static {v9}, Lr45;->l(Lq55;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v9}, Lj45;->v()V

    .line 91
    .line 92
    .line 93
    move-wide v9, v7

    .line 94
    iget-wide v7, v2, Lm25;->m:J

    .line 95
    .line 96
    iget-object v11, v4, Lr45;->g:Lj45;

    .line 97
    .line 98
    invoke-static {v11}, Lr45;->l(Lq55;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v11}, Lj45;->v()V

    .line 102
    .line 103
    .line 104
    move-wide v11, v9

    .line 105
    iget-wide v9, v2, Lm25;->n:J

    .line 106
    .line 107
    iget-object v13, v4, Lr45;->g:Lj45;

    .line 108
    .line 109
    invoke-static {v13}, Lr45;->l(Lq55;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v13}, Lj45;->v()V

    .line 113
    .line 114
    .line 115
    move-wide v13, v11

    .line 116
    iget-boolean v12, v2, Lm25;->o:Z

    .line 117
    .line 118
    move-wide v15, v13

    .line 119
    invoke-virtual {v2}, Lm25;->K()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v14

    .line 123
    iget-object v11, v4, Lr45;->g:Lj45;

    .line 124
    .line 125
    invoke-static {v11}, Lr45;->l(Lq55;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v11}, Lj45;->v()V

    .line 129
    .line 130
    .line 131
    iget-boolean v11, v2, Lm25;->p:Z

    .line 132
    .line 133
    invoke-virtual {v2}, Lm25;->x()Ljava/lang/Boolean;

    .line 134
    .line 135
    .line 136
    move-result-object v20

    .line 137
    invoke-virtual {v2}, Lm25;->b()J

    .line 138
    .line 139
    .line 140
    move-result-wide v21

    .line 141
    iget-object v13, v4, Lr45;->g:Lj45;

    .line 142
    .line 143
    invoke-static {v13}, Lr45;->l(Lq55;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v13}, Lj45;->v()V

    .line 147
    .line 148
    .line 149
    iget-object v13, v2, Lm25;->s:Ljava/util/ArrayList;

    .line 150
    .line 151
    invoke-virtual/range {p0 .. p1}, Lpb5;->a(Ljava/lang/String;)Ly55;

    .line 152
    .line 153
    .line 154
    move-result-object v17

    .line 155
    invoke-virtual/range {v17 .. v17}, Ly55;->g()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v24

    .line 159
    invoke-virtual {v2}, Lm25;->z()Z

    .line 160
    .line 161
    .line 162
    move-result v27

    .line 163
    move-object/from16 v17, v0

    .line 164
    .line 165
    iget-object v0, v4, Lr45;->g:Lj45;

    .line 166
    .line 167
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0}, Lj45;->v()V

    .line 171
    .line 172
    .line 173
    iget-wide v0, v2, Lm25;->v:J

    .line 174
    .line 175
    move-wide/from16 v28, v0

    .line 176
    .line 177
    invoke-virtual/range {p0 .. p1}, Lpb5;->a(Ljava/lang/String;)Ly55;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    iget v0, v0, Ly55;->b:I

    .line 182
    .line 183
    invoke-virtual/range {p0 .. p1}, Lpb5;->o0(Ljava/lang/String;)Lrt4;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    iget-object v1, v1, Lrt4;->b:Ljava/lang/String;

    .line 188
    .line 189
    move/from16 v30, v0

    .line 190
    .line 191
    iget-object v0, v4, Lr45;->g:Lj45;

    .line 192
    .line 193
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0}, Lj45;->v()V

    .line 197
    .line 198
    .line 199
    iget v0, v2, Lm25;->x:I

    .line 200
    .line 201
    iget-object v4, v4, Lr45;->g:Lj45;

    .line 202
    .line 203
    invoke-static {v4}, Lr45;->l(Lq55;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v4}, Lj45;->v()V

    .line 207
    .line 208
    .line 209
    move/from16 v32, v0

    .line 210
    .line 211
    move-object/from16 v31, v1

    .line 212
    .line 213
    iget-wide v0, v2, Lm25;->B:J

    .line 214
    .line 215
    invoke-virtual {v2}, Lm25;->D()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v35

    .line 219
    invoke-virtual {v2}, Lm25;->s()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v36

    .line 223
    invoke-virtual {v2}, Lm25;->t()I

    .line 224
    .line 225
    .line 226
    move-result v39

    .line 227
    const-wide/16 v37, 0x0

    .line 228
    .line 229
    const-wide/16 v40, 0x0

    .line 230
    .line 231
    move/from16 v18, v11

    .line 232
    .line 233
    const/4 v11, 0x0

    .line 234
    move-object/from16 v23, v13

    .line 235
    .line 236
    const/4 v13, 0x0

    .line 237
    move-object v2, v5

    .line 238
    move-wide v4, v15

    .line 239
    const-wide/16 v15, 0x0

    .line 240
    .line 241
    move-wide/from16 v33, v0

    .line 242
    .line 243
    move-object/from16 v0, v17

    .line 244
    .line 245
    const/16 v17, 0x0

    .line 246
    .line 247
    const/16 v19, 0x0

    .line 248
    .line 249
    const-string v25, ""

    .line 250
    .line 251
    const/16 v26, 0x0

    .line 252
    .line 253
    move-object/from16 v1, p1

    .line 254
    .line 255
    invoke-direct/range {v0 .. v41}, Lvc5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JIZZLjava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJILjava/lang/String;IJLjava/lang/String;Ljava/lang/String;JIJ)V

    .line 256
    .line 257
    .line 258
    return-object v0

    .line 259
    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lpb5;->c()La25;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    iget-object v0, v0, La25;->m:Lx15;

    .line 264
    .line 265
    const-string v2, "No app data available; dropping"

    .line 266
    .line 267
    invoke-virtual {v0, v1, v2}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    return-object v3
.end method

.method public final R(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lpb5;->c:Lat4;

    .line 2
    .line 3
    invoke-static {p0}, Lpb5;->T(Lab5;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "events"

    .line 7
    .line 8
    invoke-virtual {p0, v0, p1, p2}, Lat4;->V(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lxt4;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    iget-wide p0, p0, Lxt4;->c:J

    .line 15
    .line 16
    const-wide/16 v0, 0x1

    .line 17
    .line 18
    cmp-long p0, p0, v0

    .line 19
    .line 20
    if-gez p0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return p0

    .line 25
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 26
    return p0
.end method

.method public final V()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lpb5;->d()Lj45;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lj45;->v()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lpb5;->l0()V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lpb5;->n:Z

    .line 12
    .line 13
    if-nez v0, :cond_a

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lpb5;->n:Z

    .line 17
    .line 18
    invoke-virtual {p0}, Lpb5;->d()Lj45;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lj45;->v()V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lpb5;->w:Ljava/nio/channels/FileLock;

    .line 26
    .line 27
    iget-object v2, p0, Lpb5;->l:Lr45;

    .line 28
    .line 29
    const-string v3, "Storage concurrent access okay"

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->isValid()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0}, Lpb5;->c()La25;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-object v1, v1, La25;->n:Lx15;

    .line 44
    .line 45
    invoke-virtual {v1, v3}, Lx15;->a(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    iget-object v1, p0, Lpb5;->c:Lat4;

    .line 50
    .line 51
    iget-object v1, v1, Lib0;->a:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v1, Lr45;

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    iget-object v1, v2, Lr45;->a:Landroid/content/Context;

    .line 59
    .line 60
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    new-instance v4, Ljava/io/File;

    .line 65
    .line 66
    new-instance v5, Ljava/io/File;

    .line 67
    .line 68
    const-string v6, "google_app_measurement.db"

    .line 69
    .line 70
    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    .line 81
    .line 82
    const-string v5, "rw"

    .line 83
    .line 84
    invoke-direct {v1, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    iput-object v1, p0, Lpb5;->x:Ljava/nio/channels/FileChannel;

    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    iput-object v1, p0, Lpb5;->w:Ljava/nio/channels/FileLock;

    .line 98
    .line 99
    if-eqz v1, :cond_9

    .line 100
    .line 101
    invoke-virtual {p0}, Lpb5;->c()La25;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    iget-object v1, v1, La25;->n:Lx15;

    .line 106
    .line 107
    invoke-virtual {v1, v3}, Lx15;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_0 .. :try_end_0} :catch_2

    .line 108
    .line 109
    .line 110
    :goto_0
    iget-object v1, p0, Lpb5;->x:Ljava/nio/channels/FileChannel;

    .line 111
    .line 112
    invoke-virtual {p0}, Lpb5;->d()Lj45;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-virtual {v3}, Lj45;->v()V

    .line 117
    .line 118
    .line 119
    const-string v3, "Bad channel to read from"

    .line 120
    .line 121
    const-wide/16 v4, 0x0

    .line 122
    .line 123
    const/4 v6, 0x4

    .line 124
    const/4 v7, 0x0

    .line 125
    if-eqz v1, :cond_3

    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    .line 128
    .line 129
    .line 130
    move-result v8

    .line 131
    if-nez v8, :cond_1

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_1
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 135
    .line 136
    .line 137
    move-result-object v8

    .line 138
    :try_start_1
    invoke-virtual {v1, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, v8}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-eq v1, v6, :cond_2

    .line 146
    .line 147
    const/4 v8, -0x1

    .line 148
    if-eq v1, v8, :cond_4

    .line 149
    .line 150
    invoke-virtual {p0}, Lpb5;->c()La25;

    .line 151
    .line 152
    .line 153
    move-result-object v8

    .line 154
    iget-object v8, v8, La25;->i:Lx15;

    .line 155
    .line 156
    const-string v9, "Unexpected data length. Bytes read"

    .line 157
    .line 158
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {v8, v1, v9}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    goto :goto_3

    .line 166
    :catch_0
    move-exception v1

    .line 167
    goto :goto_1

    .line 168
    :cond_2
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    .line 172
    .line 173
    .line 174
    move-result v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 175
    goto :goto_3

    .line 176
    :goto_1
    invoke-virtual {p0}, Lpb5;->c()La25;

    .line 177
    .line 178
    .line 179
    move-result-object v8

    .line 180
    iget-object v8, v8, La25;->f:Lx15;

    .line 181
    .line 182
    const-string v9, "Failed to read from channel"

    .line 183
    .line 184
    invoke-virtual {v8, v1, v9}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lpb5;->c()La25;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    iget-object v1, v1, La25;->f:Lx15;

    .line 193
    .line 194
    invoke-virtual {v1, v3}, Lx15;->a(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    :cond_4
    :goto_3
    invoke-virtual {v2}, Lr45;->q()Lg15;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-virtual {v1}, Lj05;->w()V

    .line 202
    .line 203
    .line 204
    iget v1, v1, Lg15;->e:I

    .line 205
    .line 206
    invoke-virtual {p0}, Lpb5;->d()Lj45;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    invoke-virtual {v2}, Lj45;->v()V

    .line 211
    .line 212
    .line 213
    if-le v7, v1, :cond_5

    .line 214
    .line 215
    invoke-virtual {p0}, Lpb5;->c()La25;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    iget-object p0, p0, La25;->f:Lx15;

    .line 220
    .line 221
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    const-string v2, "Panic: can\'t downgrade version. Previous, current version"

    .line 230
    .line 231
    invoke-virtual {p0, v0, v1, v2}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    return-void

    .line 235
    :cond_5
    if-ge v7, v1, :cond_a

    .line 236
    .line 237
    iget-object v2, p0, Lpb5;->x:Ljava/nio/channels/FileChannel;

    .line 238
    .line 239
    invoke-virtual {p0}, Lpb5;->d()Lj45;

    .line 240
    .line 241
    .line 242
    move-result-object v8

    .line 243
    invoke-virtual {v8}, Lj45;->v()V

    .line 244
    .line 245
    .line 246
    if-eqz v2, :cond_8

    .line 247
    .line 248
    invoke-virtual {v2}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    .line 249
    .line 250
    .line 251
    move-result v8

    .line 252
    if-nez v8, :cond_6

    .line 253
    .line 254
    goto :goto_6

    .line 255
    :cond_6
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 263
    .line 264
    .line 265
    :try_start_2
    invoke-virtual {v2, v4, v5}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v2, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 269
    .line 270
    .line 271
    invoke-virtual {v2, v0}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    .line 275
    .line 276
    .line 277
    move-result-wide v3

    .line 278
    const-wide/16 v5, 0x4

    .line 279
    .line 280
    cmp-long v0, v3, v5

    .line 281
    .line 282
    if-eqz v0, :cond_7

    .line 283
    .line 284
    invoke-virtual {p0}, Lpb5;->c()La25;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    iget-object v0, v0, La25;->f:Lx15;

    .line 289
    .line 290
    const-string v3, "Error writing to channel. Bytes written"

    .line 291
    .line 292
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    .line 293
    .line 294
    .line 295
    move-result-wide v4

    .line 296
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    invoke-virtual {v0, v2, v3}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 301
    .line 302
    .line 303
    goto :goto_4

    .line 304
    :catch_1
    move-exception v0

    .line 305
    goto :goto_5

    .line 306
    :cond_7
    :goto_4
    invoke-virtual {p0}, Lpb5;->c()La25;

    .line 307
    .line 308
    .line 309
    move-result-object p0

    .line 310
    iget-object p0, p0, La25;->n:Lx15;

    .line 311
    .line 312
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    const-string v2, "Storage version upgraded. Previous, current version"

    .line 321
    .line 322
    invoke-virtual {p0, v0, v1, v2}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    return-void

    .line 326
    :goto_5
    invoke-virtual {p0}, Lpb5;->c()La25;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    iget-object v2, v2, La25;->f:Lx15;

    .line 331
    .line 332
    const-string v3, "Failed to write to channel"

    .line 333
    .line 334
    invoke-virtual {v2, v0, v3}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    goto :goto_7

    .line 338
    :cond_8
    :goto_6
    invoke-virtual {p0}, Lpb5;->c()La25;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    iget-object v0, v0, La25;->f:Lx15;

    .line 343
    .line 344
    invoke-virtual {v0, v3}, Lx15;->a(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    :goto_7
    invoke-virtual {p0}, Lpb5;->c()La25;

    .line 348
    .line 349
    .line 350
    move-result-object p0

    .line 351
    iget-object p0, p0, La25;->f:Lx15;

    .line 352
    .line 353
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    const-string v2, "Storage version upgrade failed. Previous, current version"

    .line 362
    .line 363
    invoke-virtual {p0, v0, v1, v2}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    return-void

    .line 367
    :catch_2
    move-exception v0

    .line 368
    goto :goto_8

    .line 369
    :catch_3
    move-exception v0

    .line 370
    goto :goto_9

    .line 371
    :catch_4
    move-exception v0

    .line 372
    goto :goto_a

    .line 373
    :cond_9
    :try_start_3
    invoke-virtual {p0}, Lpb5;->c()La25;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    iget-object v0, v0, La25;->f:Lx15;

    .line 378
    .line 379
    const-string v1, "Storage concurrent data access panic"

    .line 380
    .line 381
    invoke-virtual {v0, v1}, Lx15;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_3 .. :try_end_3} :catch_2

    .line 382
    .line 383
    .line 384
    goto :goto_b

    .line 385
    :goto_8
    invoke-virtual {p0}, Lpb5;->c()La25;

    .line 386
    .line 387
    .line 388
    move-result-object p0

    .line 389
    iget-object p0, p0, La25;->i:Lx15;

    .line 390
    .line 391
    const-string v1, "Storage lock already acquired"

    .line 392
    .line 393
    invoke-virtual {p0, v0, v1}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    goto :goto_b

    .line 397
    :goto_9
    invoke-virtual {p0}, Lpb5;->c()La25;

    .line 398
    .line 399
    .line 400
    move-result-object p0

    .line 401
    iget-object p0, p0, La25;->f:Lx15;

    .line 402
    .line 403
    const-string v1, "Failed to access storage lock file"

    .line 404
    .line 405
    invoke-virtual {p0, v0, v1}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    goto :goto_b

    .line 409
    :goto_a
    invoke-virtual {p0}, Lpb5;->c()La25;

    .line 410
    .line 411
    .line 412
    move-result-object p0

    .line 413
    iget-object p0, p0, La25;->f:Lx15;

    .line 414
    .line 415
    const-string v1, "Failed to acquire storage lock"

    .line 416
    .line 417
    invoke-virtual {p0, v0, v1}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    :cond_a
    :goto_b
    return-void
.end method

.method public final W(Lvb5;Lvc5;)V
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "_id"

    .line 8
    .line 9
    invoke-virtual {v1}, Lpb5;->d()Lj45;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    invoke-virtual {v4}, Lj45;->v()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lpb5;->l0()V

    .line 17
    .line 18
    .line 19
    invoke-static {v2}, Lpb5;->S(Lvc5;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-nez v4, :cond_0

    .line 24
    .line 25
    goto/16 :goto_6

    .line 26
    .line 27
    :cond_0
    iget-boolean v4, v2, Lvc5;->u:Z

    .line 28
    .line 29
    if-nez v4, :cond_1

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lpb5;->c0(Lvc5;)Lm25;

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    invoke-virtual {v1}, Lpb5;->k0()Lac5;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    iget-object v8, v0, Lvb5;->o:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v4, v8}, Lac5;->D0(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v11

    .line 45
    const/4 v4, 0x1

    .line 46
    const/16 v5, 0x18

    .line 47
    .line 48
    iget-object v12, v1, Lpb5;->J:Llb5;

    .line 49
    .line 50
    const/4 v13, 0x0

    .line 51
    if-eqz v11, :cond_3

    .line 52
    .line 53
    invoke-virtual {v1}, Lpb5;->k0()Lac5;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Lpb5;->e0()Lds4;

    .line 57
    .line 58
    .line 59
    move v14, v13

    .line 60
    invoke-static {v8, v5, v4}, Lac5;->C(Ljava/lang/String;IZ)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v13

    .line 64
    if-eqz v8, :cond_2

    .line 65
    .line 66
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    move v14, v0

    .line 71
    :cond_2
    invoke-virtual {v1}, Lpb5;->k0()Lac5;

    .line 72
    .line 73
    .line 74
    iget-object v10, v2, Lvc5;->n:Ljava/lang/String;

    .line 75
    .line 76
    move-object v9, v12

    .line 77
    const-string v12, "_ev"

    .line 78
    .line 79
    invoke-static/range {v9 .. v14}, Lac5;->N(Lyb5;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_3
    move-object v9, v12

    .line 84
    move v14, v13

    .line 85
    invoke-virtual {v1}, Lpb5;->k0()Lac5;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    invoke-virtual {v0}, Lvb5;->Y()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    invoke-virtual {v6, v7, v8}, Lac5;->K(Ljava/lang/Object;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    if-eqz v6, :cond_6

    .line 98
    .line 99
    invoke-virtual {v1}, Lpb5;->k0()Lac5;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Lpb5;->e0()Lds4;

    .line 103
    .line 104
    .line 105
    invoke-static {v8, v5, v4}, Lac5;->C(Ljava/lang/String;IZ)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v16

    .line 109
    invoke-virtual {v0}, Lvb5;->Y()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    if-eqz v0, :cond_4

    .line 114
    .line 115
    instance-of v3, v0, Ljava/lang/String;

    .line 116
    .line 117
    if-nez v3, :cond_5

    .line 118
    .line 119
    instance-of v3, v0, Ljava/lang/CharSequence;

    .line 120
    .line 121
    if-eqz v3, :cond_4

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_4
    move/from16 v17, v14

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_5
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 132
    .line 133
    .line 134
    move-result v13

    .line 135
    move/from16 v17, v13

    .line 136
    .line 137
    :goto_1
    invoke-virtual {v1}, Lpb5;->k0()Lac5;

    .line 138
    .line 139
    .line 140
    iget-object v13, v2, Lvc5;->n:Ljava/lang/String;

    .line 141
    .line 142
    const-string v15, "_ev"

    .line 143
    .line 144
    move v14, v6

    .line 145
    move-object v12, v9

    .line 146
    invoke-static/range {v12 .. v17}, Lac5;->N(Lyb5;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :cond_6
    move-object v12, v9

    .line 151
    invoke-virtual {v1}, Lpb5;->k0()Lac5;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    invoke-virtual {v0}, Lvb5;->Y()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    invoke-virtual {v4, v5, v8}, Lac5;->L(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v11

    .line 163
    if-eqz v11, :cond_f

    .line 164
    .line 165
    const-string v4, "_sid"

    .line 166
    .line 167
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v5

    .line 171
    if-eqz v5, :cond_a

    .line 172
    .line 173
    iget-wide v5, v0, Lvb5;->p:J

    .line 174
    .line 175
    iget-object v7, v0, Lvb5;->s:Ljava/lang/String;

    .line 176
    .line 177
    iget-object v9, v2, Lvc5;->n:Ljava/lang/String;

    .line 178
    .line 179
    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v9

    .line 183
    check-cast v9, Ljava/lang/String;

    .line 184
    .line 185
    iget-object v10, v1, Lpb5;->c:Lat4;

    .line 186
    .line 187
    invoke-static {v10}, Lpb5;->T(Lab5;)V

    .line 188
    .line 189
    .line 190
    const-string v13, "_sno"

    .line 191
    .line 192
    invoke-virtual {v10, v9, v13}, Lat4;->r0(Ljava/lang/String;Ljava/lang/String;)Lxb5;

    .line 193
    .line 194
    .line 195
    move-result-object v10

    .line 196
    if-eqz v10, :cond_7

    .line 197
    .line 198
    iget-object v13, v10, Lxb5;->e:Ljava/lang/Object;

    .line 199
    .line 200
    instance-of v15, v13, Ljava/lang/Long;

    .line 201
    .line 202
    if-eqz v15, :cond_7

    .line 203
    .line 204
    check-cast v13, Ljava/lang/Long;

    .line 205
    .line 206
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    .line 207
    .line 208
    .line 209
    move-result-wide v9

    .line 210
    goto :goto_2

    .line 211
    :cond_7
    if-eqz v10, :cond_8

    .line 212
    .line 213
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 214
    .line 215
    .line 216
    move-result-object v13

    .line 217
    iget-object v13, v13, La25;->i:Lx15;

    .line 218
    .line 219
    const-string v15, "Retrieved last session number from database does not contain a valid (long) value"

    .line 220
    .line 221
    iget-object v10, v10, Lxb5;->e:Ljava/lang/Object;

    .line 222
    .line 223
    invoke-virtual {v13, v10, v15}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    :cond_8
    iget-object v10, v1, Lpb5;->c:Lat4;

    .line 227
    .line 228
    invoke-static {v10}, Lpb5;->T(Lab5;)V

    .line 229
    .line 230
    .line 231
    const-string v13, "_s"

    .line 232
    .line 233
    const-string v15, "events"

    .line 234
    .line 235
    invoke-virtual {v10, v15, v9, v13}, Lat4;->V(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lxt4;

    .line 236
    .line 237
    .line 238
    move-result-object v9

    .line 239
    if-eqz v9, :cond_9

    .line 240
    .line 241
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 242
    .line 243
    .line 244
    move-result-object v10

    .line 245
    iget-object v10, v10, La25;->n:Lx15;

    .line 246
    .line 247
    iget-wide v14, v9, Lxt4;->c:J

    .line 248
    .line 249
    const-string v9, "Backfill the session number. Last used session number"

    .line 250
    .line 251
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 252
    .line 253
    .line 254
    move-result-object v13

    .line 255
    invoke-virtual {v10, v13, v9}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    move-wide v9, v14

    .line 259
    goto :goto_2

    .line 260
    :cond_9
    const-wide/16 v9, 0x0

    .line 261
    .line 262
    :goto_2
    new-instance v17, Lvb5;

    .line 263
    .line 264
    const-wide/16 v13, 0x1

    .line 265
    .line 266
    add-long/2addr v9, v13

    .line 267
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 268
    .line 269
    .line 270
    move-result-object v20

    .line 271
    const-string v21, "_sno"

    .line 272
    .line 273
    move-wide/from16 v18, v5

    .line 274
    .line 275
    move-object/from16 v22, v7

    .line 276
    .line 277
    invoke-direct/range {v17 .. v22}, Lvb5;-><init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    move-object/from16 v5, v17

    .line 281
    .line 282
    invoke-virtual {v1, v5, v2}, Lpb5;->W(Lvb5;Lvc5;)V

    .line 283
    .line 284
    .line 285
    :cond_a
    new-instance v5, Lxb5;

    .line 286
    .line 287
    iget-object v13, v2, Lvc5;->n:Ljava/lang/String;

    .line 288
    .line 289
    invoke-static {v13}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v6

    .line 293
    check-cast v6, Ljava/lang/String;

    .line 294
    .line 295
    iget-object v7, v0, Lvb5;->s:Ljava/lang/String;

    .line 296
    .line 297
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v7

    .line 301
    check-cast v7, Ljava/lang/String;

    .line 302
    .line 303
    iget-wide v9, v0, Lvb5;->p:J

    .line 304
    .line 305
    invoke-direct/range {v5 .. v11}, Lxb5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    iget-object v0, v0, La25;->n:Lx15;

    .line 313
    .line 314
    iget-object v6, v1, Lpb5;->l:Lr45;

    .line 315
    .line 316
    iget-object v7, v6, Lr45;->j:Lp15;

    .line 317
    .line 318
    iget-object v9, v5, Lxb5;->c:Ljava/lang/String;

    .line 319
    .line 320
    invoke-virtual {v7, v9}, Lp15;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v7

    .line 324
    const-string v10, "Setting user property"

    .line 325
    .line 326
    invoke-virtual {v0, v7, v11, v10}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    iget-object v0, v1, Lpb5;->c:Lat4;

    .line 330
    .line 331
    invoke-static {v0}, Lpb5;->T(Lab5;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v0}, Lat4;->j0()V

    .line 335
    .line 336
    .line 337
    :try_start_0
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    iget-object v7, v5, Lxb5;->e:Ljava/lang/Object;

    .line 342
    .line 343
    if-eqz v0, :cond_b

    .line 344
    .line 345
    :try_start_1
    iget-object v0, v1, Lpb5;->c:Lat4;

    .line 346
    .line 347
    invoke-static {v0}, Lpb5;->T(Lab5;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v0, v13, v3}, Lat4;->r0(Ljava/lang/String;Ljava/lang/String;)Lxb5;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    if-eqz v0, :cond_b

    .line 355
    .line 356
    iget-object v0, v0, Lxb5;->e:Ljava/lang/Object;

    .line 357
    .line 358
    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    move-result v0

    .line 362
    if-nez v0, :cond_b

    .line 363
    .line 364
    iget-object v0, v1, Lpb5;->c:Lat4;

    .line 365
    .line 366
    invoke-static {v0}, Lpb5;->T(Lab5;)V

    .line 367
    .line 368
    .line 369
    const-string v3, "_lair"

    .line 370
    .line 371
    invoke-virtual {v0, v13, v3}, Lat4;->p0(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    goto :goto_3

    .line 375
    :catchall_0
    move-exception v0

    .line 376
    goto/16 :goto_5

    .line 377
    .line 378
    :cond_b
    :goto_3
    invoke-virtual {v1, v2}, Lpb5;->c0(Lvc5;)Lm25;

    .line 379
    .line 380
    .line 381
    iget-object v0, v1, Lpb5;->c:Lat4;

    .line 382
    .line 383
    invoke-static {v0}, Lpb5;->T(Lab5;)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v0, v5}, Lat4;->q0(Lxb5;)Z

    .line 387
    .line 388
    .line 389
    move-result v0

    .line 390
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 391
    .line 392
    .line 393
    move-result v3

    .line 394
    if-eqz v3, :cond_d

    .line 395
    .line 396
    iget-object v3, v1, Lpb5;->g:Lub5;

    .line 397
    .line 398
    invoke-static {v3}, Lpb5;->T(Lab5;)V

    .line 399
    .line 400
    .line 401
    iget-object v2, v2, Lvc5;->H:Ljava/lang/String;

    .line 402
    .line 403
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 404
    .line 405
    .line 406
    move-result v4

    .line 407
    if-eqz v4, :cond_c

    .line 408
    .line 409
    const-wide/16 v2, 0x0

    .line 410
    .line 411
    goto :goto_4

    .line 412
    :cond_c
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 413
    .line 414
    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 415
    .line 416
    .line 417
    move-result-object v2

    .line 418
    invoke-virtual {v3, v2}, Lub5;->e0([B)J

    .line 419
    .line 420
    .line 421
    move-result-wide v2

    .line 422
    :goto_4
    iget-object v4, v1, Lpb5;->c:Lat4;

    .line 423
    .line 424
    invoke-static {v4}, Lpb5;->T(Lab5;)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v4, v13}, Lat4;->z0(Ljava/lang/String;)Lm25;

    .line 428
    .line 429
    .line 430
    move-result-object v4

    .line 431
    if-eqz v4, :cond_d

    .line 432
    .line 433
    invoke-virtual {v4, v2, v3}, Lm25;->B(J)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v4}, Lm25;->o()Z

    .line 437
    .line 438
    .line 439
    move-result v2

    .line 440
    if-eqz v2, :cond_d

    .line 441
    .line 442
    iget-object v2, v1, Lpb5;->c:Lat4;

    .line 443
    .line 444
    invoke-static {v2}, Lpb5;->T(Lab5;)V

    .line 445
    .line 446
    .line 447
    const/4 v14, 0x0

    .line 448
    invoke-virtual {v2, v4, v14}, Lat4;->A0(Lm25;Z)V

    .line 449
    .line 450
    .line 451
    :cond_d
    iget-object v2, v1, Lpb5;->c:Lat4;

    .line 452
    .line 453
    invoke-static {v2}, Lpb5;->T(Lab5;)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v2}, Lat4;->k0()V

    .line 457
    .line 458
    .line 459
    if-nez v0, :cond_e

    .line 460
    .line 461
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    iget-object v0, v0, La25;->f:Lx15;

    .line 466
    .line 467
    const-string v2, "Too many unique user properties are set. Ignoring user property"

    .line 468
    .line 469
    iget-object v3, v6, Lr45;->j:Lp15;

    .line 470
    .line 471
    invoke-virtual {v3, v9}, Lp15;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v3

    .line 475
    invoke-virtual {v0, v3, v7, v2}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    invoke-virtual {v1}, Lpb5;->k0()Lac5;

    .line 479
    .line 480
    .line 481
    const/16 v16, 0x0

    .line 482
    .line 483
    const/16 v17, 0x0

    .line 484
    .line 485
    const/16 v14, 0x9

    .line 486
    .line 487
    const/4 v15, 0x0

    .line 488
    invoke-static/range {v12 .. v17}, Lac5;->N(Lyb5;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 489
    .line 490
    .line 491
    :cond_e
    iget-object v0, v1, Lpb5;->c:Lat4;

    .line 492
    .line 493
    invoke-static {v0}, Lpb5;->T(Lab5;)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {v0}, Lat4;->l0()V

    .line 497
    .line 498
    .line 499
    return-void

    .line 500
    :goto_5
    iget-object v1, v1, Lpb5;->c:Lat4;

    .line 501
    .line 502
    invoke-static {v1}, Lpb5;->T(Lab5;)V

    .line 503
    .line 504
    .line 505
    invoke-virtual {v1}, Lat4;->l0()V

    .line 506
    .line 507
    .line 508
    throw v0

    .line 509
    :cond_f
    :goto_6
    return-void
.end method

.method public final X(Ljava/lang/String;Lvc5;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lpb5;->d()Lj45;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lj45;->v()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lpb5;->l0()V

    .line 9
    .line 10
    .line 11
    invoke-static {p2}, Lpb5;->S(Lvc5;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p2, Lvc5;->n:Ljava/lang/String;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-boolean v0, p2, Lvc5;->u:Z

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0, p2}, Lpb5;->c0(Lvc5;)Lm25;

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    invoke-static {p2}, Lpb5;->U(Lvc5;)Ljava/lang/Boolean;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v2, "_npa"

    .line 33
    .line 34
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    invoke-virtual {p0}, Lpb5;->c()La25;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iget-object p1, p1, La25;->m:Lx15;

    .line 47
    .line 48
    const-string v1, "Falling back to manifest metadata value for ad personalization"

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Lx15;->a(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance v2, Lvb5;

    .line 54
    .line 55
    invoke-virtual {p0}, Lpb5;->f()Lcom/google/android/gms/common/util/Clock;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 60
    .line 61
    .line 62
    move-result-wide v3

    .line 63
    const/4 p1, 0x1

    .line 64
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eq p1, v0, :cond_2

    .line 69
    .line 70
    const-wide/16 v0, 0x0

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    const-wide/16 v0, 0x1

    .line 74
    .line 75
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    const-string v7, "auto"

    .line 80
    .line 81
    const-string v6, "_npa"

    .line 82
    .line 83
    invoke-direct/range {v2 .. v7}, Lvb5;-><init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v2, p2}, Lpb5;->W(Lvb5;Lvc5;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_3
    invoke-virtual {p0}, Lpb5;->c()La25;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iget-object v0, v0, La25;->m:Lx15;

    .line 95
    .line 96
    iget-object v2, p0, Lpb5;->l:Lr45;

    .line 97
    .line 98
    iget-object v3, v2, Lr45;->j:Lp15;

    .line 99
    .line 100
    invoke-virtual {v3, p1}, Lp15;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    const-string v4, "Removing user property"

    .line 105
    .line 106
    invoke-virtual {v0, v3, v4}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lpb5;->c:Lat4;

    .line 110
    .line 111
    invoke-static {v0}, Lpb5;->T(Lab5;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Lat4;->j0()V

    .line 115
    .line 116
    .line 117
    :try_start_0
    invoke-virtual {p0, p2}, Lpb5;->c0(Lvc5;)Lm25;

    .line 118
    .line 119
    .line 120
    const-string p2, "_id"

    .line 121
    .line 122
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result p2

    .line 126
    if-eqz p2, :cond_4

    .line 127
    .line 128
    iget-object p2, p0, Lpb5;->c:Lat4;

    .line 129
    .line 130
    invoke-static {p2}, Lpb5;->T(Lab5;)V

    .line 131
    .line 132
    .line 133
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    check-cast v0, Ljava/lang/String;

    .line 138
    .line 139
    const-string v3, "_lair"

    .line 140
    .line 141
    invoke-virtual {p2, v0, v3}, Lat4;->p0(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :catchall_0
    move-exception v0

    .line 146
    move-object p1, v0

    .line 147
    goto :goto_2

    .line 148
    :cond_4
    :goto_1
    iget-object p2, p0, Lpb5;->c:Lat4;

    .line 149
    .line 150
    invoke-static {p2}, Lpb5;->T(Lab5;)V

    .line 151
    .line 152
    .line 153
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    check-cast v0, Ljava/lang/String;

    .line 158
    .line 159
    invoke-virtual {p2, v0, p1}, Lat4;->p0(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    iget-object p2, p0, Lpb5;->c:Lat4;

    .line 163
    .line 164
    invoke-static {p2}, Lpb5;->T(Lab5;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p2}, Lat4;->k0()V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0}, Lpb5;->c()La25;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    iget-object p2, p2, La25;->m:Lx15;

    .line 175
    .line 176
    const-string v0, "User property removed"

    .line 177
    .line 178
    iget-object v1, v2, Lr45;->j:Lp15;

    .line 179
    .line 180
    invoke-virtual {v1, p1}, Lp15;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-virtual {p2, p1, v0}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    .line 186
    .line 187
    iget-object p0, p0, Lpb5;->c:Lat4;

    .line 188
    .line 189
    invoke-static {p0}, Lpb5;->T(Lab5;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0}, Lat4;->l0()V

    .line 193
    .line 194
    .line 195
    return-void

    .line 196
    :goto_2
    iget-object p0, p0, Lpb5;->c:Lat4;

    .line 197
    .line 198
    invoke-static {p0}, Lpb5;->T(Lab5;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0}, Lat4;->l0()V

    .line 202
    .line 203
    .line 204
    throw p1
.end method

.method public final Y(Lvc5;)V
    .locals 36

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    iget-object v3, v1, Lpb5;->l:Lr45;

    .line 6
    .line 7
    const-string v4, "_sysu"

    .line 8
    .line 9
    const-string v5, "_sys"

    .line 10
    .line 11
    const-string v6, "_pfo"

    .line 12
    .line 13
    const-string v0, "com.android.vending"

    .line 14
    .line 15
    const-string v7, "_npa"

    .line 16
    .line 17
    const-string v8, "_uwa"

    .line 18
    .line 19
    invoke-virtual {v1}, Lpb5;->d()Lj45;

    .line 20
    .line 21
    .line 22
    move-result-object v9

    .line 23
    invoke-virtual {v9}, Lj45;->v()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lpb5;->l0()V

    .line 27
    .line 28
    .line 29
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    iget-object v9, v2, Lvc5;->n:Ljava/lang/String;

    .line 33
    .line 34
    iget-boolean v10, v2, Lvc5;->B:Z

    .line 35
    .line 36
    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    invoke-static {v2}, Lpb5;->S(Lvc5;)Z

    .line 40
    .line 41
    .line 42
    move-result v11

    .line 43
    if-nez v11, :cond_0

    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    iget-object v11, v1, Lpb5;->c:Lat4;

    .line 47
    .line 48
    invoke-static {v11}, Lpb5;->T(Lab5;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v11, v9}, Lat4;->z0(Ljava/lang/String;)Lm25;

    .line 52
    .line 53
    .line 54
    move-result-object v11

    .line 55
    const/4 v12, 0x0

    .line 56
    const-wide/16 v13, 0x0

    .line 57
    .line 58
    if-eqz v11, :cond_1

    .line 59
    .line 60
    invoke-virtual {v11}, Lm25;->H()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v15

    .line 64
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v15

    .line 68
    if-eqz v15, :cond_1

    .line 69
    .line 70
    iget-object v15, v2, Lvc5;->o:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 73
    .line 74
    .line 75
    move-result v15

    .line 76
    if-nez v15, :cond_1

    .line 77
    .line 78
    invoke-virtual {v11, v13, v14}, Lm25;->f(J)V

    .line 79
    .line 80
    .line 81
    iget-object v15, v1, Lpb5;->c:Lat4;

    .line 82
    .line 83
    invoke-static {v15}, Lpb5;->T(Lab5;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v15, v11, v12}, Lat4;->A0(Lm25;Z)V

    .line 87
    .line 88
    .line 89
    iget-object v11, v1, Lpb5;->a:Lw35;

    .line 90
    .line 91
    invoke-static {v11}, Lpb5;->T(Lab5;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v11}, Lib0;->v()V

    .line 95
    .line 96
    .line 97
    iget-object v11, v11, Lw35;->i:Ldi;

    .line 98
    .line 99
    invoke-virtual {v11, v9}, Lwm3;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    :cond_1
    iget-boolean v11, v2, Lvc5;->u:Z

    .line 103
    .line 104
    if-nez v11, :cond_2

    .line 105
    .line 106
    invoke-virtual/range {p0 .. p1}, Lpb5;->c0(Lvc5;)Lm25;

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_2
    move-wide v15, v13

    .line 111
    iget-wide v13, v2, Lvc5;->y:J

    .line 112
    .line 113
    invoke-virtual {v1}, Lpb5;->e0()Lds4;

    .line 114
    .line 115
    .line 116
    move-result-object v11

    .line 117
    move-wide/from16 v17, v15

    .line 118
    .line 119
    sget-object v15, Le05;->e1:Ld05;

    .line 120
    .line 121
    const/4 v12, 0x0

    .line 122
    invoke-virtual {v11, v12, v15}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 123
    .line 124
    .line 125
    move-result v11

    .line 126
    if-eqz v11, :cond_3

    .line 127
    .line 128
    move-wide/from16 v20, v13

    .line 129
    .line 130
    iget-wide v12, v2, Lvc5;->S:J

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_3
    move-wide/from16 v20, v13

    .line 134
    .line 135
    move-wide/from16 v12, v17

    .line 136
    .line 137
    :goto_0
    cmp-long v14, v20, v17

    .line 138
    .line 139
    if-nez v14, :cond_5

    .line 140
    .line 141
    invoke-virtual {v1}, Lpb5;->f()Lcom/google/android/gms/common/util/Clock;

    .line 142
    .line 143
    .line 144
    move-result-object v12

    .line 145
    invoke-interface {v12}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 146
    .line 147
    .line 148
    move-result-wide v13

    .line 149
    invoke-virtual {v1}, Lpb5;->e0()Lds4;

    .line 150
    .line 151
    .line 152
    move-result-object v12

    .line 153
    const/4 v11, 0x0

    .line 154
    invoke-virtual {v12, v11, v15}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 155
    .line 156
    .line 157
    move-result v12

    .line 158
    if-eqz v12, :cond_4

    .line 159
    .line 160
    invoke-virtual {v1}, Lpb5;->f()Lcom/google/android/gms/common/util/Clock;

    .line 161
    .line 162
    .line 163
    move-result-object v12

    .line 164
    invoke-interface {v12}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 165
    .line 166
    .line 167
    move-result-wide v15

    .line 168
    goto :goto_1

    .line 169
    :cond_4
    move-wide/from16 v15, v17

    .line 170
    .line 171
    :goto_1
    move-wide/from16 v21, v13

    .line 172
    .line 173
    move-wide/from16 v26, v15

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_5
    move-wide/from16 v26, v12

    .line 177
    .line 178
    move-wide/from16 v21, v20

    .line 179
    .line 180
    :goto_2
    iget v12, v2, Lvc5;->z:I

    .line 181
    .line 182
    const/4 v13, 0x1

    .line 183
    if-eqz v12, :cond_6

    .line 184
    .line 185
    if-eq v12, v13, :cond_6

    .line 186
    .line 187
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 188
    .line 189
    .line 190
    move-result-object v14

    .line 191
    iget-object v14, v14, La25;->i:Lx15;

    .line 192
    .line 193
    invoke-static {v9}, La25;->D(Ljava/lang/String;)Ly15;

    .line 194
    .line 195
    .line 196
    move-result-object v15

    .line 197
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 198
    .line 199
    .line 200
    move-result-object v12

    .line 201
    const-string v11, "Incorrect app type, assuming installed app. appId, appType"

    .line 202
    .line 203
    invoke-virtual {v14, v15, v12, v11}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    const/4 v12, 0x0

    .line 207
    :cond_6
    iget-object v11, v1, Lpb5;->c:Lat4;

    .line 208
    .line 209
    invoke-static {v11}, Lpb5;->T(Lab5;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v11}, Lat4;->j0()V

    .line 213
    .line 214
    .line 215
    :try_start_0
    iget-object v11, v1, Lpb5;->c:Lat4;

    .line 216
    .line 217
    invoke-static {v11}, Lpb5;->T(Lab5;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v11, v9, v7}, Lat4;->r0(Ljava/lang/String;Ljava/lang/String;)Lxb5;

    .line 221
    .line 222
    .line 223
    move-result-object v11

    .line 224
    invoke-static {v2}, Lpb5;->U(Lvc5;)Ljava/lang/Boolean;

    .line 225
    .line 226
    .line 227
    move-result-object v14

    .line 228
    move-object v15, v14

    .line 229
    if-eqz v11, :cond_8

    .line 230
    .line 231
    const-wide/16 v29, 0x1

    .line 232
    .line 233
    const-string v13, "auto"

    .line 234
    .line 235
    iget-object v14, v11, Lxb5;->b:Ljava/lang/String;

    .line 236
    .line 237
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v13

    .line 241
    if-eqz v13, :cond_7

    .line 242
    .line 243
    goto :goto_3

    .line 244
    :cond_7
    move-wide/from16 v13, v21

    .line 245
    .line 246
    goto :goto_5

    .line 247
    :catchall_0
    move-exception v0

    .line 248
    move-object v9, v1

    .line 249
    goto/16 :goto_16

    .line 250
    .line 251
    :cond_8
    const-wide/16 v29, 0x1

    .line 252
    .line 253
    :goto_3
    if-eqz v15, :cond_b

    .line 254
    .line 255
    new-instance v20, Lvb5;

    .line 256
    .line 257
    const-string v24, "_npa"

    .line 258
    .line 259
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    .line 260
    .line 261
    .line 262
    move-result v7

    .line 263
    const/4 v13, 0x1

    .line 264
    if-eq v13, v7, :cond_9

    .line 265
    .line 266
    move-wide/from16 v13, v17

    .line 267
    .line 268
    goto :goto_4

    .line 269
    :cond_9
    move-wide/from16 v13, v29

    .line 270
    .line 271
    :goto_4
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 272
    .line 273
    .line 274
    move-result-object v23

    .line 275
    const-string v25, "auto"

    .line 276
    .line 277
    invoke-direct/range {v20 .. v25}, Lvb5;-><init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    move-object/from16 v7, v20

    .line 281
    .line 282
    move-wide/from16 v13, v21

    .line 283
    .line 284
    if-eqz v11, :cond_a

    .line 285
    .line 286
    iget-object v11, v11, Lxb5;->e:Ljava/lang/Object;

    .line 287
    .line 288
    iget-object v15, v7, Lvb5;->q:Ljava/lang/Long;

    .line 289
    .line 290
    invoke-virtual {v11, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result v11

    .line 294
    if-nez v11, :cond_c

    .line 295
    .line 296
    :cond_a
    invoke-virtual {v1, v7, v2}, Lpb5;->W(Lvb5;Lvc5;)V

    .line 297
    .line 298
    .line 299
    goto :goto_5

    .line 300
    :cond_b
    move-wide/from16 v13, v21

    .line 301
    .line 302
    if-eqz v11, :cond_c

    .line 303
    .line 304
    invoke-virtual {v1, v7, v2}, Lpb5;->X(Ljava/lang/String;Lvc5;)V

    .line 305
    .line 306
    .line 307
    :cond_c
    :goto_5
    invoke-virtual {v1}, Lpb5;->e0()Lds4;

    .line 308
    .line 309
    .line 310
    move-result-object v7

    .line 311
    sget-object v11, Le05;->W0:Ld05;

    .line 312
    .line 313
    const/4 v15, 0x0

    .line 314
    invoke-virtual {v7, v15, v11}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 315
    .line 316
    .line 317
    move-result v7

    .line 318
    if-eqz v7, :cond_d

    .line 319
    .line 320
    move v7, v12

    .line 321
    iget-wide v11, v2, Lvc5;->Q:J

    .line 322
    .line 323
    invoke-virtual {v1, v2, v11, v12}, Lpb5;->b0(Lvc5;J)V

    .line 324
    .line 325
    .line 326
    goto :goto_6

    .line 327
    :cond_d
    move v7, v12

    .line 328
    invoke-virtual {v1, v2, v13, v14}, Lpb5;->b0(Lvc5;J)V

    .line 329
    .line 330
    .line 331
    :goto_6
    invoke-virtual/range {p0 .. p1}, Lpb5;->c0(Lvc5;)Lm25;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    .line 333
    .line 334
    iget-object v11, v1, Lpb5;->c:Lat4;

    .line 335
    .line 336
    const-string v12, "events"

    .line 337
    .line 338
    if-nez v7, :cond_e

    .line 339
    .line 340
    :try_start_1
    invoke-static {v11}, Lpb5;->T(Lab5;)V

    .line 341
    .line 342
    .line 343
    const-string v7, "_f"

    .line 344
    .line 345
    invoke-virtual {v11, v12, v9, v7}, Lat4;->V(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lxt4;

    .line 346
    .line 347
    .line 348
    move-result-object v7

    .line 349
    const/4 v11, 0x0

    .line 350
    goto :goto_7

    .line 351
    :cond_e
    invoke-static {v11}, Lpb5;->T(Lab5;)V

    .line 352
    .line 353
    .line 354
    const-string v7, "_v"

    .line 355
    .line 356
    invoke-virtual {v11, v12, v9, v7}, Lat4;->V(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lxt4;

    .line 357
    .line 358
    .line 359
    move-result-object v7

    .line 360
    const/4 v11, 0x1

    .line 361
    :goto_7
    if-nez v7, :cond_23

    .line 362
    .line 363
    const-wide/32 v15, 0x36ee80

    .line 364
    .line 365
    .line 366
    div-long v21, v13, v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 367
    .line 368
    add-long v21, v21, v29

    .line 369
    .line 370
    mul-long v21, v21, v15

    .line 371
    .line 372
    const-string v7, "_elt"

    .line 373
    .line 374
    const-string v12, "_dac"

    .line 375
    .line 376
    const-string v15, "_et"

    .line 377
    .line 378
    move/from16 v32, v10

    .line 379
    .line 380
    const-string v10, "_r"

    .line 381
    .line 382
    move/from16 v16, v11

    .line 383
    .line 384
    const-string v11, "_c"

    .line 385
    .line 386
    if-nez v16, :cond_21

    .line 387
    .line 388
    :try_start_2
    new-instance v20, Lvb5;

    .line 389
    .line 390
    const-string v24, "_fot"

    .line 391
    .line 392
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 393
    .line 394
    .line 395
    move-result-object v23

    .line 396
    const-string v25, "auto"

    .line 397
    .line 398
    move-wide/from16 v21, v13

    .line 399
    .line 400
    invoke-direct/range {v20 .. v25}, Lvb5;-><init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    move-object/from16 v13, v20

    .line 404
    .line 405
    invoke-virtual {v1, v13, v2}, Lpb5;->W(Lvb5;Lvc5;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v1}, Lpb5;->d()Lj45;

    .line 409
    .line 410
    .line 411
    move-result-object v13

    .line 412
    invoke-virtual {v13}, Lj45;->v()V

    .line 413
    .line 414
    .line 415
    iget-object v13, v1, Lpb5;->k:Lk35;

    .line 416
    .line 417
    invoke-static {v13}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v13

    .line 421
    check-cast v13, Lk35;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 422
    .line 423
    if-eqz v9, :cond_f

    .line 424
    .line 425
    :try_start_3
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 426
    .line 427
    .line 428
    move-result v14

    .line 429
    if-eqz v14, :cond_10

    .line 430
    .line 431
    :cond_f
    move-object/from16 v34, v3

    .line 432
    .line 433
    move-object/from16 v33, v7

    .line 434
    .line 435
    move-object/from16 v16, v15

    .line 436
    .line 437
    goto/16 :goto_a

    .line 438
    .line 439
    :cond_10
    iget-object v14, v13, Lk35;->a:Lr45;

    .line 440
    .line 441
    move-object/from16 v16, v15

    .line 442
    .line 443
    iget-object v15, v14, Lr45;->g:Lj45;

    .line 444
    .line 445
    move-object/from16 v20, v15

    .line 446
    .line 447
    iget-object v15, v14, Lr45;->a:Landroid/content/Context;

    .line 448
    .line 449
    move-object/from16 v33, v7

    .line 450
    .line 451
    iget-object v7, v14, Lr45;->f:La25;

    .line 452
    .line 453
    invoke-static/range {v20 .. v20}, Lr45;->l(Lq55;)V

    .line 454
    .line 455
    .line 456
    invoke-virtual/range {v20 .. v20}, Lj45;->v()V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v13}, Lk35;->a()Z

    .line 460
    .line 461
    .line 462
    move-result v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 463
    if-nez v20, :cond_11

    .line 464
    .line 465
    :try_start_4
    invoke-static {v7}, Lr45;->l(Lq55;)V

    .line 466
    .line 467
    .line 468
    iget-object v0, v7, La25;->l:Lx15;

    .line 469
    .line 470
    const-string v7, "Install Referrer Reporter is not available"

    .line 471
    .line 472
    invoke-virtual {v0, v7}, Lx15;->a(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 473
    .line 474
    .line 475
    move-object/from16 v34, v3

    .line 476
    .line 477
    goto/16 :goto_b

    .line 478
    .line 479
    :cond_11
    move-object/from16 v34, v3

    .line 480
    .line 481
    :try_start_5
    new-instance v3, Lh35;

    .line 482
    .line 483
    invoke-direct {v3, v13, v9}, Lh35;-><init>(Lk35;Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    iget-object v9, v14, Lr45;->g:Lj45;

    .line 487
    .line 488
    invoke-static {v9}, Lr45;->l(Lq55;)V

    .line 489
    .line 490
    .line 491
    invoke-virtual {v9}, Lj45;->v()V

    .line 492
    .line 493
    .line 494
    new-instance v9, Landroid/content/Intent;

    .line 495
    .line 496
    const-string v1, "com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE"

    .line 497
    .line 498
    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 499
    .line 500
    .line 501
    new-instance v1, Landroid/content/ComponentName;

    .line 502
    .line 503
    const-string v2, "com.google.android.finsky.externalreferrer.GetInstallReferrerService"

    .line 504
    .line 505
    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    invoke-virtual {v9, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 509
    .line 510
    .line 511
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 512
    .line 513
    .line 514
    move-result-object v1

    .line 515
    if-nez v1, :cond_12

    .line 516
    .line 517
    invoke-static {v7}, Lr45;->l(Lq55;)V

    .line 518
    .line 519
    .line 520
    iget-object v0, v7, La25;->j:Lx15;

    .line 521
    .line 522
    const-string v1, "Failed to obtain Package Manager to verify binding conditions for Install Referrer"

    .line 523
    .line 524
    invoke-virtual {v0, v1}, Lx15;->a(Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    goto/16 :goto_b

    .line 528
    .line 529
    :catchall_1
    move-exception v0

    .line 530
    move-object/from16 v9, p0

    .line 531
    .line 532
    goto/16 :goto_16

    .line 533
    .line 534
    :cond_12
    const/4 v2, 0x0

    .line 535
    invoke-virtual {v1, v9, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 536
    .line 537
    .line 538
    move-result-object v1

    .line 539
    if-eqz v1, :cond_15

    .line 540
    .line 541
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 542
    .line 543
    .line 544
    move-result v19

    .line 545
    if-nez v19, :cond_15

    .line 546
    .line 547
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 548
    .line 549
    .line 550
    move-result-object v1

    .line 551
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 552
    .line 553
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 554
    .line 555
    if-eqz v1, :cond_16

    .line 556
    .line 557
    iget-object v2, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 558
    .line 559
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 560
    .line 561
    if-eqz v1, :cond_14

    .line 562
    .line 563
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 564
    .line 565
    .line 566
    move-result v0

    .line 567
    if-eqz v0, :cond_14

    .line 568
    .line 569
    invoke-virtual {v13}, Lk35;->a()Z

    .line 570
    .line 571
    .line 572
    move-result v0

    .line 573
    if-eqz v0, :cond_14

    .line 574
    .line 575
    new-instance v0, Landroid/content/Intent;

    .line 576
    .line 577
    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 578
    .line 579
    .line 580
    :try_start_6
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    .line 581
    .line 582
    .line 583
    move-result-object v1

    .line 584
    const/4 v2, 0x1

    .line 585
    invoke-virtual {v1, v15, v0, v3, v2}, Lcom/google/android/gms/common/stats/ConnectionTracker;->bindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 586
    .line 587
    .line 588
    move-result v0

    .line 589
    invoke-static {v7}, Lr45;->l(Lq55;)V

    .line 590
    .line 591
    .line 592
    iget-object v1, v7, La25;->n:Lx15;

    .line 593
    .line 594
    const-string v2, "Install Referrer Service is"

    .line 595
    .line 596
    if-eqz v0, :cond_13

    .line 597
    .line 598
    const-string v0, "available"

    .line 599
    .line 600
    goto :goto_8

    .line 601
    :catch_0
    move-exception v0

    .line 602
    goto :goto_9

    .line 603
    :cond_13
    const-string v0, "not available"

    .line 604
    .line 605
    :goto_8
    invoke-virtual {v1, v0, v2}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 606
    .line 607
    .line 608
    goto :goto_b

    .line 609
    :goto_9
    :try_start_7
    iget-object v1, v13, Lk35;->a:Lr45;

    .line 610
    .line 611
    iget-object v1, v1, Lr45;->f:La25;

    .line 612
    .line 613
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 614
    .line 615
    .line 616
    iget-object v1, v1, La25;->f:Lx15;

    .line 617
    .line 618
    const-string v2, "Exception occurred while binding to Install Referrer Service"

    .line 619
    .line 620
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v0

    .line 624
    invoke-virtual {v1, v0, v2}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 625
    .line 626
    .line 627
    goto :goto_b

    .line 628
    :cond_14
    iget-object v0, v14, Lr45;->f:La25;

    .line 629
    .line 630
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 631
    .line 632
    .line 633
    iget-object v0, v0, La25;->i:Lx15;

    .line 634
    .line 635
    const-string v1, "Play Store version 8.3.73 or higher required for Install Referrer"

    .line 636
    .line 637
    invoke-virtual {v0, v1}, Lx15;->a(Ljava/lang/String;)V

    .line 638
    .line 639
    .line 640
    goto :goto_b

    .line 641
    :cond_15
    iget-object v0, v14, Lr45;->f:La25;

    .line 642
    .line 643
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 644
    .line 645
    .line 646
    iget-object v0, v0, La25;->l:Lx15;

    .line 647
    .line 648
    const-string v1, "Play Service for fetching Install Referrer is unavailable on device"

    .line 649
    .line 650
    invoke-virtual {v0, v1}, Lx15;->a(Ljava/lang/String;)V

    .line 651
    .line 652
    .line 653
    goto :goto_b

    .line 654
    :goto_a
    iget-object v0, v13, Lk35;->a:Lr45;

    .line 655
    .line 656
    iget-object v0, v0, Lr45;->f:La25;

    .line 657
    .line 658
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 659
    .line 660
    .line 661
    iget-object v0, v0, La25;->j:Lx15;

    .line 662
    .line 663
    const-string v1, "Install Referrer Reporter was called with invalid app package name"

    .line 664
    .line 665
    invoke-virtual {v0, v1}, Lx15;->a(Ljava/lang/String;)V

    .line 666
    .line 667
    .line 668
    :cond_16
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lpb5;->d()Lj45;

    .line 669
    .line 670
    .line 671
    move-result-object v0

    .line 672
    invoke-virtual {v0}, Lj45;->v()V

    .line 673
    .line 674
    .line 675
    invoke-virtual/range {p0 .. p0}, Lpb5;->l0()V

    .line 676
    .line 677
    .line 678
    new-instance v1, Landroid/os/Bundle;

    .line 679
    .line 680
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 681
    .line 682
    .line 683
    move-wide/from16 v2, v29

    .line 684
    .line 685
    invoke-virtual {v1, v11, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 686
    .line 687
    .line 688
    invoke-virtual {v1, v10, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 689
    .line 690
    .line 691
    move-wide/from16 v9, v17

    .line 692
    .line 693
    invoke-virtual {v1, v8, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 694
    .line 695
    .line 696
    invoke-virtual {v1, v6, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 697
    .line 698
    .line 699
    invoke-virtual {v1, v5, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 700
    .line 701
    .line 702
    invoke-virtual {v1, v4, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 703
    .line 704
    .line 705
    move-object/from16 v7, v16

    .line 706
    .line 707
    invoke-virtual {v1, v7, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 708
    .line 709
    .line 710
    if-eqz v32, :cond_17

    .line 711
    .line 712
    invoke-virtual {v1, v12, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 713
    .line 714
    .line 715
    :cond_17
    move-object/from16 v2, p1

    .line 716
    .line 717
    iget-object v0, v2, Lvc5;->n:Ljava/lang/String;

    .line 718
    .line 719
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    .line 721
    .line 722
    move-result-object v0

    .line 723
    move-object v3, v0

    .line 724
    check-cast v3, Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 725
    .line 726
    move-object/from16 v9, p0

    .line 727
    .line 728
    :try_start_8
    iget-object v0, v9, Lpb5;->c:Lat4;

    .line 729
    .line 730
    invoke-static {v0}, Lpb5;->T(Lab5;)V

    .line 731
    .line 732
    .line 733
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 734
    .line 735
    .line 736
    invoke-virtual {v0}, Lib0;->v()V

    .line 737
    .line 738
    .line 739
    invoke-virtual {v0}, Lab5;->w()V

    .line 740
    .line 741
    .line 742
    invoke-virtual {v0, v3}, Lat4;->J(Ljava/lang/String;)J

    .line 743
    .line 744
    .line 745
    move-result-wide v17

    .line 746
    move-object/from16 v7, v34

    .line 747
    .line 748
    iget-object v0, v7, Lr45;->a:Landroid/content/Context;

    .line 749
    .line 750
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 751
    .line 752
    .line 753
    move-result-object v0

    .line 754
    if-nez v0, :cond_19

    .line 755
    .line 756
    invoke-virtual {v9}, Lpb5;->c()La25;

    .line 757
    .line 758
    .line 759
    move-result-object v0

    .line 760
    iget-object v0, v0, La25;->f:Lx15;

    .line 761
    .line 762
    const-string v4, "PackageManager is null, first open report might be inaccurate. appId"

    .line 763
    .line 764
    invoke-static {v3}, La25;->D(Ljava/lang/String;)Ly15;

    .line 765
    .line 766
    .line 767
    move-result-object v3

    .line 768
    invoke-virtual {v0, v3, v4}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 769
    .line 770
    .line 771
    :cond_18
    :goto_c
    move-wide/from16 v3, v17

    .line 772
    .line 773
    const-wide/16 v15, 0x0

    .line 774
    .line 775
    goto/16 :goto_14

    .line 776
    .line 777
    :catchall_2
    move-exception v0

    .line 778
    goto/16 :goto_16

    .line 779
    .line 780
    :cond_19
    :try_start_9
    iget-object v0, v7, Lr45;->a:Landroid/content/Context;

    .line 781
    .line 782
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    .line 783
    .line 784
    .line 785
    move-result-object v0

    .line 786
    const/4 v10, 0x0

    .line 787
    invoke-virtual {v0, v3, v10}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 788
    .line 789
    .line 790
    move-result-object v11
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 791
    goto :goto_d

    .line 792
    :catch_1
    move-exception v0

    .line 793
    :try_start_a
    invoke-virtual {v9}, Lpb5;->c()La25;

    .line 794
    .line 795
    .line 796
    move-result-object v10

    .line 797
    iget-object v10, v10, La25;->f:Lx15;

    .line 798
    .line 799
    const-string v11, "Package info is null, first open report might be inaccurate. appId"

    .line 800
    .line 801
    invoke-static {v3}, La25;->D(Ljava/lang/String;)Ly15;

    .line 802
    .line 803
    .line 804
    move-result-object v12

    .line 805
    invoke-virtual {v10, v12, v0, v11}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 806
    .line 807
    .line 808
    const/4 v11, 0x0

    .line 809
    :goto_d
    if-eqz v11, :cond_1e

    .line 810
    .line 811
    iget-wide v12, v11, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 812
    .line 813
    const-wide/16 v15, 0x0

    .line 814
    .line 815
    cmp-long v0, v12, v15

    .line 816
    .line 817
    if-eqz v0, :cond_1e

    .line 818
    .line 819
    iget-wide v10, v11, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 820
    .line 821
    cmp-long v0, v12, v10

    .line 822
    .line 823
    if-eqz v0, :cond_1c

    .line 824
    .line 825
    invoke-virtual {v9}, Lpb5;->e0()Lds4;

    .line 826
    .line 827
    .line 828
    move-result-object v0

    .line 829
    sget-object v10, Le05;->I0:Ld05;

    .line 830
    .line 831
    const/4 v11, 0x0

    .line 832
    invoke-virtual {v0, v11, v10}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 833
    .line 834
    .line 835
    move-result v0

    .line 836
    if-eqz v0, :cond_1b

    .line 837
    .line 838
    const-wide/16 v15, 0x0

    .line 839
    .line 840
    cmp-long v0, v17, v15

    .line 841
    .line 842
    if-nez v0, :cond_1a

    .line 843
    .line 844
    const-wide/16 v12, 0x1

    .line 845
    .line 846
    invoke-virtual {v1, v8, v12, v13}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 847
    .line 848
    .line 849
    const/4 v0, 0x0

    .line 850
    const-wide/16 v17, 0x0

    .line 851
    .line 852
    goto :goto_f

    .line 853
    :cond_1a
    :goto_e
    const/4 v0, 0x0

    .line 854
    goto :goto_f

    .line 855
    :cond_1b
    const-wide/16 v12, 0x1

    .line 856
    .line 857
    invoke-virtual {v1, v8, v12, v13}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 858
    .line 859
    .line 860
    goto :goto_e

    .line 861
    :cond_1c
    const/4 v11, 0x0

    .line 862
    const/4 v0, 0x1

    .line 863
    :goto_f
    new-instance v20, Lvb5;

    .line 864
    .line 865
    const-string v24, "_fi"

    .line 866
    .line 867
    const/4 v13, 0x1

    .line 868
    if-eq v13, v0, :cond_1d

    .line 869
    .line 870
    const-wide/16 v12, 0x0

    .line 871
    .line 872
    goto :goto_10

    .line 873
    :cond_1d
    const-wide/16 v12, 0x1

    .line 874
    .line 875
    :goto_10
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 876
    .line 877
    .line 878
    move-result-object v23

    .line 879
    const-string v25, "auto"

    .line 880
    .line 881
    invoke-direct/range {v20 .. v25}, Lvb5;-><init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    .line 883
    .line 884
    move-object/from16 v0, v20

    .line 885
    .line 886
    invoke-virtual {v9, v0, v2}, Lpb5;->W(Lvb5;Lvc5;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 887
    .line 888
    .line 889
    goto :goto_11

    .line 890
    :cond_1e
    const/4 v11, 0x0

    .line 891
    :goto_11
    :try_start_b
    iget-object v0, v7, Lr45;->a:Landroid/content/Context;

    .line 892
    .line 893
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    .line 894
    .line 895
    .line 896
    move-result-object v0

    .line 897
    const/4 v10, 0x0

    .line 898
    invoke-virtual {v0, v3, v10}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 899
    .line 900
    .line 901
    move-result-object v12
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 902
    goto :goto_12

    .line 903
    :catch_2
    move-exception v0

    .line 904
    :try_start_c
    invoke-virtual {v9}, Lpb5;->c()La25;

    .line 905
    .line 906
    .line 907
    move-result-object v7

    .line 908
    iget-object v7, v7, La25;->f:Lx15;

    .line 909
    .line 910
    const-string v8, "Application info is null, first open report might be inaccurate. appId"

    .line 911
    .line 912
    invoke-static {v3}, La25;->D(Ljava/lang/String;)Ly15;

    .line 913
    .line 914
    .line 915
    move-result-object v3

    .line 916
    invoke-virtual {v7, v3, v0, v8}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 917
    .line 918
    .line 919
    move-object v12, v11

    .line 920
    :goto_12
    if-eqz v12, :cond_18

    .line 921
    .line 922
    iget v0, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 923
    .line 924
    const/16 v28, 0x1

    .line 925
    .line 926
    and-int/lit8 v0, v0, 0x1

    .line 927
    .line 928
    if-eqz v0, :cond_1f

    .line 929
    .line 930
    const-wide/16 v7, 0x1

    .line 931
    .line 932
    invoke-virtual {v1, v5, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 933
    .line 934
    .line 935
    goto :goto_13

    .line 936
    :cond_1f
    const-wide/16 v7, 0x1

    .line 937
    .line 938
    :goto_13
    iget v0, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 939
    .line 940
    and-int/lit16 v0, v0, 0x80

    .line 941
    .line 942
    if-eqz v0, :cond_18

    .line 943
    .line 944
    invoke-virtual {v1, v4, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 945
    .line 946
    .line 947
    goto/16 :goto_c

    .line 948
    .line 949
    :goto_14
    cmp-long v0, v3, v15

    .line 950
    .line 951
    if-ltz v0, :cond_20

    .line 952
    .line 953
    invoke-virtual {v1, v6, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 954
    .line 955
    .line 956
    :cond_20
    invoke-virtual {v9}, Lpb5;->f()Lcom/google/android/gms/common/util/Clock;

    .line 957
    .line 958
    .line 959
    move-result-object v0

    .line 960
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 961
    .line 962
    .line 963
    move-result-wide v3

    .line 964
    move-object/from16 v5, v33

    .line 965
    .line 966
    invoke-virtual {v1, v5, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 967
    .line 968
    .line 969
    new-instance v20, Lbu4;

    .line 970
    .line 971
    move-wide/from16 v24, v21

    .line 972
    .line 973
    const-string v21, "_f"

    .line 974
    .line 975
    new-instance v0, Lzt4;

    .line 976
    .line 977
    invoke-direct {v0, v1}, Lzt4;-><init>(Landroid/os/Bundle;)V

    .line 978
    .line 979
    .line 980
    const-string v23, "auto"

    .line 981
    .line 982
    move-object/from16 v22, v0

    .line 983
    .line 984
    invoke-direct/range {v20 .. v27}, Lbu4;-><init>(Ljava/lang/String;Lzt4;Ljava/lang/String;JJ)V

    .line 985
    .line 986
    .line 987
    move-object/from16 v0, v20

    .line 988
    .line 989
    invoke-virtual {v9, v0, v2}, Lpb5;->i(Lbu4;Lvc5;)V

    .line 990
    .line 991
    .line 992
    goto/16 :goto_15

    .line 993
    .line 994
    :cond_21
    move-object v9, v1

    .line 995
    move-object v5, v7

    .line 996
    move-wide/from16 v24, v13

    .line 997
    .line 998
    move-object v7, v15

    .line 999
    new-instance v20, Lvb5;

    .line 1000
    .line 1001
    const-string v24, "_fvt"

    .line 1002
    .line 1003
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v23

    .line 1007
    const-string v25, "auto"

    .line 1008
    .line 1009
    move-wide/from16 v21, v13

    .line 1010
    .line 1011
    invoke-direct/range {v20 .. v25}, Lvb5;-><init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    .line 1013
    .line 1014
    move-object/from16 v0, v20

    .line 1015
    .line 1016
    invoke-virtual {v9, v0, v2}, Lpb5;->W(Lvb5;Lvc5;)V

    .line 1017
    .line 1018
    .line 1019
    invoke-virtual {v9}, Lpb5;->d()Lj45;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v0

    .line 1023
    invoke-virtual {v0}, Lj45;->v()V

    .line 1024
    .line 1025
    .line 1026
    invoke-virtual {v9}, Lpb5;->l0()V

    .line 1027
    .line 1028
    .line 1029
    new-instance v0, Landroid/os/Bundle;

    .line 1030
    .line 1031
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1032
    .line 1033
    .line 1034
    const-wide/16 v3, 0x1

    .line 1035
    .line 1036
    invoke-virtual {v0, v11, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 1037
    .line 1038
    .line 1039
    invoke-virtual {v0, v10, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 1040
    .line 1041
    .line 1042
    invoke-virtual {v0, v7, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 1043
    .line 1044
    .line 1045
    if-eqz v32, :cond_22

    .line 1046
    .line 1047
    invoke-virtual {v0, v12, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 1048
    .line 1049
    .line 1050
    :cond_22
    invoke-virtual {v9}, Lpb5;->f()Lcom/google/android/gms/common/util/Clock;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v1

    .line 1054
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 1055
    .line 1056
    .line 1057
    move-result-wide v3

    .line 1058
    invoke-virtual {v0, v5, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 1059
    .line 1060
    .line 1061
    new-instance v20, Lbu4;

    .line 1062
    .line 1063
    move-wide/from16 v24, v21

    .line 1064
    .line 1065
    const-string v21, "_v"

    .line 1066
    .line 1067
    new-instance v1, Lzt4;

    .line 1068
    .line 1069
    invoke-direct {v1, v0}, Lzt4;-><init>(Landroid/os/Bundle;)V

    .line 1070
    .line 1071
    .line 1072
    const-string v23, "auto"

    .line 1073
    .line 1074
    move-object/from16 v22, v1

    .line 1075
    .line 1076
    invoke-direct/range {v20 .. v27}, Lbu4;-><init>(Ljava/lang/String;Lzt4;Ljava/lang/String;JJ)V

    .line 1077
    .line 1078
    .line 1079
    move-object/from16 v0, v20

    .line 1080
    .line 1081
    invoke-virtual {v9, v0, v2}, Lpb5;->i(Lbu4;Lvc5;)V

    .line 1082
    .line 1083
    .line 1084
    goto :goto_15

    .line 1085
    :cond_23
    move-object v9, v1

    .line 1086
    move-wide/from16 v21, v13

    .line 1087
    .line 1088
    iget-boolean v0, v2, Lvc5;->v:Z

    .line 1089
    .line 1090
    if-eqz v0, :cond_24

    .line 1091
    .line 1092
    new-instance v0, Landroid/os/Bundle;

    .line 1093
    .line 1094
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1095
    .line 1096
    .line 1097
    new-instance v28, Lbu4;

    .line 1098
    .line 1099
    const-string v29, "_cd"

    .line 1100
    .line 1101
    new-instance v1, Lzt4;

    .line 1102
    .line 1103
    invoke-direct {v1, v0}, Lzt4;-><init>(Landroid/os/Bundle;)V

    .line 1104
    .line 1105
    .line 1106
    const-string v31, "auto"

    .line 1107
    .line 1108
    const-wide/16 v34, 0x0

    .line 1109
    .line 1110
    move-object/from16 v30, v1

    .line 1111
    .line 1112
    move-wide/from16 v32, v21

    .line 1113
    .line 1114
    invoke-direct/range {v28 .. v35}, Lbu4;-><init>(Ljava/lang/String;Lzt4;Ljava/lang/String;JJ)V

    .line 1115
    .line 1116
    .line 1117
    move-object/from16 v0, v28

    .line 1118
    .line 1119
    invoke-virtual {v9, v0, v2}, Lpb5;->i(Lbu4;Lvc5;)V

    .line 1120
    .line 1121
    .line 1122
    :cond_24
    :goto_15
    iget-object v0, v9, Lpb5;->c:Lat4;

    .line 1123
    .line 1124
    invoke-static {v0}, Lpb5;->T(Lab5;)V

    .line 1125
    .line 1126
    .line 1127
    invoke-virtual {v0}, Lat4;->k0()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1128
    .line 1129
    .line 1130
    iget-object v0, v9, Lpb5;->c:Lat4;

    .line 1131
    .line 1132
    invoke-static {v0}, Lpb5;->T(Lab5;)V

    .line 1133
    .line 1134
    .line 1135
    invoke-virtual {v0}, Lat4;->l0()V

    .line 1136
    .line 1137
    .line 1138
    return-void

    .line 1139
    :goto_16
    iget-object v1, v9, Lpb5;->c:Lat4;

    .line 1140
    .line 1141
    invoke-static {v1}, Lpb5;->T(Lab5;)V

    .line 1142
    .line 1143
    .line 1144
    invoke-virtual {v1}, Lat4;->l0()V

    .line 1145
    .line 1146
    .line 1147
    throw v0
.end method

.method public final Z(Lfq4;Lvc5;)V
    .locals 13

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lfq4;->n:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    iget-object v0, p1, Lfq4;->o:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    iget-object v0, p1, Lfq4;->p:Lvb5;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    iget-object v0, p1, Lfq4;->p:Lvb5;

    .line 20
    .line 21
    iget-object v0, v0, Lvb5;->o:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lpb5;->d()Lj45;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lj45;->v()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lpb5;->l0()V

    .line 34
    .line 35
    .line 36
    invoke-static {p2}, Lpb5;->S(Lvc5;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_0

    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    iget-boolean v0, p2, Lvc5;->u:Z

    .line 44
    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    invoke-virtual {p0, p2}, Lpb5;->c0(Lvc5;)Lm25;

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    new-instance v0, Lfq4;

    .line 52
    .line 53
    invoke-direct {v0, p1}, Lfq4;-><init>(Lfq4;)V

    .line 54
    .line 55
    .line 56
    const/4 p1, 0x0

    .line 57
    iput-boolean p1, v0, Lfq4;->r:Z

    .line 58
    .line 59
    iget-object v1, p0, Lpb5;->c:Lat4;

    .line 60
    .line 61
    invoke-static {v1}, Lpb5;->T(Lab5;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Lat4;->j0()V

    .line 65
    .line 66
    .line 67
    :try_start_0
    iget-object v1, p0, Lpb5;->c:Lat4;

    .line 68
    .line 69
    invoke-static {v1}, Lpb5;->T(Lab5;)V

    .line 70
    .line 71
    .line 72
    iget-object v2, v0, Lfq4;->n:Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    check-cast v2, Ljava/lang/String;

    .line 79
    .line 80
    iget-object v3, v0, Lfq4;->p:Lvb5;

    .line 81
    .line 82
    iget-object v3, v3, Lvb5;->o:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v1, v2, v3}, Lat4;->v0(Ljava/lang/String;Ljava/lang/String;)Lfq4;

    .line 85
    .line 86
    .line 87
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    iget-object v2, p0, Lpb5;->l:Lr45;

    .line 89
    .line 90
    if-eqz v1, :cond_2

    .line 91
    .line 92
    :try_start_1
    iget-object v3, v1, Lfq4;->o:Ljava/lang/String;

    .line 93
    .line 94
    iget-object v4, v0, Lfq4;->o:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-nez v3, :cond_2

    .line 101
    .line 102
    invoke-virtual {p0}, Lpb5;->c()La25;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    iget-object v3, v3, La25;->i:Lx15;

    .line 107
    .line 108
    const-string v4, "Updating a conditional user property with different origin. name, origin, origin (from DB)"

    .line 109
    .line 110
    iget-object v5, v2, Lr45;->j:Lp15;

    .line 111
    .line 112
    iget-object v6, v0, Lfq4;->p:Lvb5;

    .line 113
    .line 114
    iget-object v6, v6, Lvb5;->o:Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {v5, v6}, Lp15;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    iget-object v6, v0, Lfq4;->o:Ljava/lang/String;

    .line 121
    .line 122
    iget-object v7, v1, Lfq4;->o:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v3, v4, v5, v6, v7}, Lx15;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :catchall_0
    move-exception v0

    .line 129
    move-object p1, v0

    .line 130
    goto/16 :goto_4

    .line 131
    .line 132
    :cond_2
    :goto_0
    const/4 v3, 0x1

    .line 133
    if-eqz v1, :cond_3

    .line 134
    .line 135
    iget-boolean v4, v1, Lfq4;->r:Z

    .line 136
    .line 137
    if-eqz v4, :cond_3

    .line 138
    .line 139
    iget-object v4, v1, Lfq4;->o:Ljava/lang/String;

    .line 140
    .line 141
    iput-object v4, v0, Lfq4;->o:Ljava/lang/String;

    .line 142
    .line 143
    iget-wide v4, v1, Lfq4;->q:J

    .line 144
    .line 145
    iput-wide v4, v0, Lfq4;->q:J

    .line 146
    .line 147
    iget-wide v4, v1, Lfq4;->u:J

    .line 148
    .line 149
    iput-wide v4, v0, Lfq4;->u:J

    .line 150
    .line 151
    iget-object v4, v1, Lfq4;->s:Ljava/lang/String;

    .line 152
    .line 153
    iput-object v4, v0, Lfq4;->s:Ljava/lang/String;

    .line 154
    .line 155
    iget-object v4, v1, Lfq4;->v:Lbu4;

    .line 156
    .line 157
    iput-object v4, v0, Lfq4;->v:Lbu4;

    .line 158
    .line 159
    iput-boolean v3, v0, Lfq4;->r:Z

    .line 160
    .line 161
    new-instance v5, Lvb5;

    .line 162
    .line 163
    iget-object v3, v0, Lfq4;->p:Lvb5;

    .line 164
    .line 165
    iget-object v9, v3, Lvb5;->o:Ljava/lang/String;

    .line 166
    .line 167
    iget-object v4, v1, Lfq4;->p:Lvb5;

    .line 168
    .line 169
    iget-wide v6, v4, Lvb5;->p:J

    .line 170
    .line 171
    invoke-virtual {v3}, Lvb5;->Y()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v8

    .line 175
    iget-object v1, v1, Lfq4;->p:Lvb5;

    .line 176
    .line 177
    iget-object v10, v1, Lvb5;->s:Ljava/lang/String;

    .line 178
    .line 179
    invoke-direct/range {v5 .. v10}, Lvb5;-><init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    iput-object v5, v0, Lfq4;->p:Lvb5;

    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_3
    iget-object v1, v0, Lfq4;->s:Ljava/lang/String;

    .line 186
    .line 187
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    if-eqz v1, :cond_4

    .line 192
    .line 193
    new-instance v4, Lvb5;

    .line 194
    .line 195
    iget-object p1, v0, Lfq4;->p:Lvb5;

    .line 196
    .line 197
    iget-object v8, p1, Lvb5;->o:Ljava/lang/String;

    .line 198
    .line 199
    iget-wide v5, v0, Lfq4;->q:J

    .line 200
    .line 201
    invoke-virtual {p1}, Lvb5;->Y()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v7

    .line 205
    iget-object p1, v0, Lfq4;->p:Lvb5;

    .line 206
    .line 207
    iget-object v9, p1, Lvb5;->s:Ljava/lang/String;

    .line 208
    .line 209
    invoke-direct/range {v4 .. v9}, Lvb5;-><init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    iput-object v4, v0, Lfq4;->p:Lvb5;

    .line 213
    .line 214
    iput-boolean v3, v0, Lfq4;->r:Z

    .line 215
    .line 216
    move p1, v3

    .line 217
    :cond_4
    :goto_1
    iget-boolean v1, v0, Lfq4;->r:Z

    .line 218
    .line 219
    if-eqz v1, :cond_6

    .line 220
    .line 221
    iget-object v1, v0, Lfq4;->p:Lvb5;

    .line 222
    .line 223
    new-instance v3, Lxb5;

    .line 224
    .line 225
    iget-object v4, v0, Lfq4;->n:Ljava/lang/String;

    .line 226
    .line 227
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    check-cast v4, Ljava/lang/String;

    .line 232
    .line 233
    iget-object v5, v0, Lfq4;->o:Ljava/lang/String;

    .line 234
    .line 235
    iget-object v6, v1, Lvb5;->o:Ljava/lang/String;

    .line 236
    .line 237
    iget-wide v7, v1, Lvb5;->p:J

    .line 238
    .line 239
    invoke-virtual {v1}, Lvb5;->Y()Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v9

    .line 247
    invoke-direct/range {v3 .. v9}, Lxb5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    iget-object v1, v3, Lxb5;->e:Ljava/lang/Object;

    .line 251
    .line 252
    iget-object v4, v3, Lxb5;->c:Ljava/lang/String;

    .line 253
    .line 254
    iget-object v5, p0, Lpb5;->c:Lat4;

    .line 255
    .line 256
    invoke-static {v5}, Lpb5;->T(Lab5;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v5, v3}, Lat4;->q0(Lxb5;)Z

    .line 260
    .line 261
    .line 262
    move-result v3

    .line 263
    if-eqz v3, :cond_5

    .line 264
    .line 265
    invoke-virtual {p0}, Lpb5;->c()La25;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    iget-object v3, v3, La25;->m:Lx15;

    .line 270
    .line 271
    const-string v5, "User property updated immediately"

    .line 272
    .line 273
    iget-object v6, v0, Lfq4;->n:Ljava/lang/String;

    .line 274
    .line 275
    iget-object v7, v2, Lr45;->j:Lp15;

    .line 276
    .line 277
    invoke-virtual {v7, v4}, Lp15;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v4

    .line 281
    invoke-virtual {v3, v5, v6, v4, v1}, Lx15;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    goto :goto_2

    .line 285
    :cond_5
    invoke-virtual {p0}, Lpb5;->c()La25;

    .line 286
    .line 287
    .line 288
    move-result-object v3

    .line 289
    iget-object v3, v3, La25;->f:Lx15;

    .line 290
    .line 291
    const-string v5, "(2)Too many active user properties, ignoring"

    .line 292
    .line 293
    iget-object v6, v0, Lfq4;->n:Ljava/lang/String;

    .line 294
    .line 295
    invoke-static {v6}, La25;->D(Ljava/lang/String;)Ly15;

    .line 296
    .line 297
    .line 298
    move-result-object v6

    .line 299
    iget-object v7, v2, Lr45;->j:Lp15;

    .line 300
    .line 301
    invoke-virtual {v7, v4}, Lp15;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    invoke-virtual {v3, v5, v6, v4, v1}, Lx15;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 306
    .line 307
    .line 308
    :goto_2
    if-eqz p1, :cond_6

    .line 309
    .line 310
    iget-object v8, v0, Lfq4;->v:Lbu4;

    .line 311
    .line 312
    if-eqz v8, :cond_6

    .line 313
    .line 314
    new-instance v7, Lbu4;

    .line 315
    .line 316
    iget-wide v9, v0, Lfq4;->q:J

    .line 317
    .line 318
    const-wide/16 v11, 0x0

    .line 319
    .line 320
    invoke-direct/range {v7 .. v12}, Lbu4;-><init>(Lbu4;JJ)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {p0, v7, p2}, Lpb5;->l(Lbu4;Lvc5;)V

    .line 324
    .line 325
    .line 326
    :cond_6
    iget-object p1, p0, Lpb5;->c:Lat4;

    .line 327
    .line 328
    invoke-static {p1}, Lpb5;->T(Lab5;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {p1, v0}, Lat4;->u0(Lfq4;)Z

    .line 332
    .line 333
    .line 334
    move-result p1

    .line 335
    if-eqz p1, :cond_7

    .line 336
    .line 337
    invoke-virtual {p0}, Lpb5;->c()La25;

    .line 338
    .line 339
    .line 340
    move-result-object p1

    .line 341
    iget-object p1, p1, La25;->m:Lx15;

    .line 342
    .line 343
    const-string p2, "Conditional property added"

    .line 344
    .line 345
    iget-object v1, v0, Lfq4;->n:Ljava/lang/String;

    .line 346
    .line 347
    iget-object v2, v2, Lr45;->j:Lp15;

    .line 348
    .line 349
    iget-object v3, v0, Lfq4;->p:Lvb5;

    .line 350
    .line 351
    iget-object v3, v3, Lvb5;->o:Ljava/lang/String;

    .line 352
    .line 353
    invoke-virtual {v2, v3}, Lp15;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v2

    .line 357
    iget-object v0, v0, Lfq4;->p:Lvb5;

    .line 358
    .line 359
    invoke-virtual {v0}, Lvb5;->Y()Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    invoke-virtual {p1, p2, v1, v2, v0}, Lx15;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 364
    .line 365
    .line 366
    goto :goto_3

    .line 367
    :cond_7
    invoke-virtual {p0}, Lpb5;->c()La25;

    .line 368
    .line 369
    .line 370
    move-result-object p1

    .line 371
    iget-object p1, p1, La25;->f:Lx15;

    .line 372
    .line 373
    const-string p2, "Too many conditional properties, ignoring"

    .line 374
    .line 375
    iget-object v1, v0, Lfq4;->n:Ljava/lang/String;

    .line 376
    .line 377
    invoke-static {v1}, La25;->D(Ljava/lang/String;)Ly15;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    iget-object v2, v2, Lr45;->j:Lp15;

    .line 382
    .line 383
    iget-object v3, v0, Lfq4;->p:Lvb5;

    .line 384
    .line 385
    iget-object v3, v3, Lvb5;->o:Ljava/lang/String;

    .line 386
    .line 387
    invoke-virtual {v2, v3}, Lp15;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v2

    .line 391
    iget-object v0, v0, Lfq4;->p:Lvb5;

    .line 392
    .line 393
    invoke-virtual {v0}, Lvb5;->Y()Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    invoke-virtual {p1, p2, v1, v2, v0}, Lx15;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 398
    .line 399
    .line 400
    :goto_3
    iget-object p1, p0, Lpb5;->c:Lat4;

    .line 401
    .line 402
    invoke-static {p1}, Lpb5;->T(Lab5;)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {p1}, Lat4;->k0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 406
    .line 407
    .line 408
    iget-object p0, p0, Lpb5;->c:Lat4;

    .line 409
    .line 410
    invoke-static {p0}, Lpb5;->T(Lab5;)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {p0}, Lat4;->l0()V

    .line 414
    .line 415
    .line 416
    return-void

    .line 417
    :goto_4
    iget-object p0, p0, Lpb5;->c:Lat4;

    .line 418
    .line 419
    invoke-static {p0}, Lpb5;->T(Lab5;)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {p0}, Lat4;->l0()V

    .line 423
    .line 424
    .line 425
    throw p1
.end method

.method public final a(Ljava/lang/String;)Ly55;
    .locals 3

    .line 1
    sget-object v0, Ly55;->c:Ly55;

    .line 2
    .line 3
    invoke-virtual {p0}, Lpb5;->d()Lj45;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lj45;->v()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lpb5;->l0()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lpb5;->B:Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ly55;

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lpb5;->c:Lat4;

    .line 24
    .line 25
    invoke-static {v1}, Lpb5;->T(Lab5;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p1}, Lat4;->P(Ljava/lang/String;)Ly55;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-nez v1, :cond_0

    .line 33
    .line 34
    sget-object v1, Ly55;->c:Ly55;

    .line 35
    .line 36
    :cond_0
    invoke-virtual {p0}, Lpb5;->d()Lj45;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2}, Lj45;->v()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lpb5;->l0()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lpb5;->c:Lat4;

    .line 50
    .line 51
    invoke-static {p0}, Lpb5;->T(Lab5;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1, v1}, Lat4;->b0(Ljava/lang/String;Ly55;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    return-object v1
.end method

.method public final a0(Lfq4;Lvc5;)V
    .locals 11

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lfq4;->n:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    iget-object v0, p1, Lfq4;->p:Lvb5;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    iget-object v0, p1, Lfq4;->p:Lvb5;

    .line 15
    .line 16
    iget-object v0, v0, Lvb5;->o:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lpb5;->d()Lj45;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lj45;->v()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lpb5;->l0()V

    .line 29
    .line 30
    .line 31
    invoke-static {p2}, Lpb5;->S(Lvc5;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    iget-boolean v0, p2, Lvc5;->u:Z

    .line 39
    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {p0, p2}, Lpb5;->c0(Lvc5;)Lm25;

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    iget-object v0, p0, Lpb5;->c:Lat4;

    .line 47
    .line 48
    invoke-static {v0}, Lpb5;->T(Lab5;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lat4;->j0()V

    .line 52
    .line 53
    .line 54
    :try_start_0
    invoke-virtual {p0, p2}, Lpb5;->c0(Lvc5;)Lm25;

    .line 55
    .line 56
    .line 57
    iget-object v0, p1, Lfq4;->n:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Ljava/lang/String;

    .line 64
    .line 65
    iget-object v1, p0, Lpb5;->c:Lat4;

    .line 66
    .line 67
    invoke-static {v1}, Lpb5;->T(Lab5;)V

    .line 68
    .line 69
    .line 70
    iget-object v2, p1, Lfq4;->p:Lvb5;

    .line 71
    .line 72
    iget-object v2, v2, Lvb5;->o:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v1, v0, v2}, Lat4;->v0(Ljava/lang/String;Ljava/lang/String;)Lfq4;

    .line 75
    .line 76
    .line 77
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    iget-object v2, p0, Lpb5;->l:Lr45;

    .line 79
    .line 80
    if-eqz v1, :cond_4

    .line 81
    .line 82
    :try_start_1
    invoke-virtual {p0}, Lpb5;->c()La25;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    iget-object v3, v3, La25;->m:Lx15;

    .line 87
    .line 88
    const-string v4, "Removing conditional user property"

    .line 89
    .line 90
    iget-object v5, p1, Lfq4;->n:Ljava/lang/String;

    .line 91
    .line 92
    iget-object v2, v2, Lr45;->j:Lp15;

    .line 93
    .line 94
    iget-object v6, p1, Lfq4;->p:Lvb5;

    .line 95
    .line 96
    iget-object v6, v6, Lvb5;->o:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v2, v6}, Lp15;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v3, v5, v2, v4}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-object v2, p0, Lpb5;->c:Lat4;

    .line 106
    .line 107
    invoke-static {v2}, Lpb5;->T(Lab5;)V

    .line 108
    .line 109
    .line 110
    iget-object v3, p1, Lfq4;->p:Lvb5;

    .line 111
    .line 112
    iget-object v3, v3, Lvb5;->o:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v2, v0, v3}, Lat4;->w0(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-boolean v2, v1, Lfq4;->r:Z

    .line 118
    .line 119
    if-eqz v2, :cond_2

    .line 120
    .line 121
    iget-object v2, p0, Lpb5;->c:Lat4;

    .line 122
    .line 123
    invoke-static {v2}, Lpb5;->T(Lab5;)V

    .line 124
    .line 125
    .line 126
    iget-object v3, p1, Lfq4;->p:Lvb5;

    .line 127
    .line 128
    iget-object v3, v3, Lvb5;->o:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v2, v0, v3}, Lat4;->p0(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :catchall_0
    move-exception v0

    .line 135
    move-object p1, v0

    .line 136
    goto :goto_4

    .line 137
    :cond_2
    :goto_0
    iget-object p1, p1, Lfq4;->x:Lbu4;

    .line 138
    .line 139
    if-eqz p1, :cond_5

    .line 140
    .line 141
    iget-object v0, p1, Lbu4;->o:Lzt4;

    .line 142
    .line 143
    if-eqz v0, :cond_3

    .line 144
    .line 145
    invoke-virtual {v0}, Lzt4;->j0()Landroid/os/Bundle;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    :goto_1
    move-object v4, v0

    .line 150
    goto :goto_2

    .line 151
    :cond_3
    const/4 v0, 0x0

    .line 152
    goto :goto_1

    .line 153
    :goto_2
    invoke-virtual {p0}, Lpb5;->k0()Lac5;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    check-cast v0, Lbu4;

    .line 162
    .line 163
    iget-object v3, v0, Lbu4;->n:Ljava/lang/String;

    .line 164
    .line 165
    iget-object v5, v1, Lfq4;->o:Ljava/lang/String;

    .line 166
    .line 167
    iget-wide v6, p1, Lbu4;->q:J

    .line 168
    .line 169
    iget-wide v8, p1, Lbu4;->r:J

    .line 170
    .line 171
    const/4 v10, 0x1

    .line 172
    invoke-virtual/range {v2 .. v10}, Lac5;->b0(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JJZ)Lbu4;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    check-cast p1, Lbu4;

    .line 181
    .line 182
    invoke-virtual {p0, p1, p2}, Lpb5;->l(Lbu4;Lvc5;)V

    .line 183
    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_4
    invoke-virtual {p0}, Lpb5;->c()La25;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    iget-object p2, p2, La25;->i:Lx15;

    .line 191
    .line 192
    const-string v0, "Conditional user property doesn\'t exist"

    .line 193
    .line 194
    iget-object v1, p1, Lfq4;->n:Ljava/lang/String;

    .line 195
    .line 196
    invoke-static {v1}, La25;->D(Ljava/lang/String;)Ly15;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    iget-object v2, v2, Lr45;->j:Lp15;

    .line 201
    .line 202
    iget-object p1, p1, Lfq4;->p:Lvb5;

    .line 203
    .line 204
    iget-object p1, p1, Lvb5;->o:Ljava/lang/String;

    .line 205
    .line 206
    invoke-virtual {v2, p1}, Lp15;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-virtual {p2, v1, p1, v0}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    :cond_5
    :goto_3
    iget-object p1, p0, Lpb5;->c:Lat4;

    .line 214
    .line 215
    invoke-static {p1}, Lpb5;->T(Lab5;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1}, Lat4;->k0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    .line 220
    .line 221
    iget-object p0, p0, Lpb5;->c:Lat4;

    .line 222
    .line 223
    invoke-static {p0}, Lpb5;->T(Lab5;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0}, Lat4;->l0()V

    .line 227
    .line 228
    .line 229
    return-void

    .line 230
    :goto_4
    iget-object p0, p0, Lpb5;->c:Lat4;

    .line 231
    .line 232
    invoke-static {p0}, Lpb5;->T(Lab5;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p0}, Lat4;->l0()V

    .line 236
    .line 237
    .line 238
    throw p1
.end method

.method public final b()Lpr3;
    .locals 0

    .line 1
    iget-object p0, p0, Lpb5;->l:Lr45;

    .line 2
    .line 3
    iget-object p0, p0, Lr45;->c:Lpr3;

    .line 4
    .line 5
    return-object p0
.end method

.method public final b0(Lvc5;J)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v0, "app_id=?"

    .line 6
    .line 7
    iget-object v3, v1, Lpb5;->c:Lat4;

    .line 8
    .line 9
    invoke-static {v3}, Lpb5;->T(Lab5;)V

    .line 10
    .line 11
    .line 12
    iget-object v4, v2, Lvc5;->n:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    check-cast v4, Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v3, v4}, Lat4;->z0(Ljava/lang/String;)Lm25;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const/4 v4, 0x0

    .line 25
    if-eqz v3, :cond_2

    .line 26
    .line 27
    invoke-virtual {v1}, Lpb5;->k0()Lac5;

    .line 28
    .line 29
    .line 30
    iget-object v5, v2, Lvc5;->o:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v3}, Lm25;->H()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    if-nez v7, :cond_2

    .line 45
    .line 46
    if-nez v8, :cond_2

    .line 47
    .line 48
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-nez v5, :cond_2

    .line 56
    .line 57
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    iget-object v5, v5, La25;->i:Lx15;

    .line 62
    .line 63
    invoke-virtual {v3}, Lm25;->E()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-static {v6}, La25;->D(Ljava/lang/String;)Ly15;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    const-string v7, "New GMP App Id passed in. Removing cached database data. appId"

    .line 72
    .line 73
    invoke-virtual {v5, v6, v7}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v5, v1, Lpb5;->c:Lat4;

    .line 77
    .line 78
    invoke-static {v5}, Lpb5;->T(Lab5;)V

    .line 79
    .line 80
    .line 81
    iget-object v6, v5, Lib0;->a:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v6, Lr45;

    .line 84
    .line 85
    invoke-virtual {v3}, Lm25;->E()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v5}, Lab5;->w()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5}, Lib0;->v()V

    .line 93
    .line 94
    .line 95
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    :try_start_0
    invoke-virtual {v5}, Lat4;->m0()Landroid/database/sqlite/SQLiteDatabase;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    filled-new-array {v3}, [Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    const-string v8, "events"

    .line 107
    .line 108
    invoke-virtual {v5, v8, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    move-result v8

    .line 112
    const-string v9, "user_attributes"

    .line 113
    .line 114
    invoke-virtual {v5, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    move-result v9

    .line 118
    add-int/2addr v8, v9

    .line 119
    const-string v9, "conditional_properties"

    .line 120
    .line 121
    invoke-virtual {v5, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    move-result v9

    .line 125
    add-int/2addr v8, v9

    .line 126
    const-string v9, "apps"

    .line 127
    .line 128
    invoke-virtual {v5, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    move-result v9

    .line 132
    add-int/2addr v8, v9

    .line 133
    const-string v9, "raw_events"

    .line 134
    .line 135
    invoke-virtual {v5, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    move-result v9

    .line 139
    add-int/2addr v8, v9

    .line 140
    const-string v9, "raw_events_metadata"

    .line 141
    .line 142
    invoke-virtual {v5, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    move-result v9

    .line 146
    add-int/2addr v8, v9

    .line 147
    const-string v9, "event_filters"

    .line 148
    .line 149
    invoke-virtual {v5, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    move-result v9

    .line 153
    add-int/2addr v8, v9

    .line 154
    const-string v9, "property_filters"

    .line 155
    .line 156
    invoke-virtual {v5, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    move-result v9

    .line 160
    add-int/2addr v8, v9

    .line 161
    const-string v9, "audience_filter_values"

    .line 162
    .line 163
    invoke-virtual {v5, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    move-result v9

    .line 167
    add-int/2addr v8, v9

    .line 168
    const-string v9, "consent_settings"

    .line 169
    .line 170
    invoke-virtual {v5, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    move-result v9

    .line 174
    add-int/2addr v8, v9

    .line 175
    const-string v9, "default_event_params"

    .line 176
    .line 177
    invoke-virtual {v5, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    move-result v9

    .line 181
    add-int/2addr v8, v9

    .line 182
    const-string v9, "trigger_uris"

    .line 183
    .line 184
    invoke-virtual {v5, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    move-result v9

    .line 188
    add-int/2addr v8, v9

    .line 189
    const-string v9, "diagnostic_signals"

    .line 190
    .line 191
    invoke-virtual {v5, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 192
    .line 193
    .line 194
    move-result v9

    .line 195
    add-int/2addr v8, v9

    .line 196
    sget-object v9, Llq4;->o:Llq4;

    .line 197
    .line 198
    iget-object v9, v9, Llq4;->n:Lfu3;

    .line 199
    .line 200
    iget-object v9, v9, Lfu3;->n:Ljava/lang/Object;

    .line 201
    .line 202
    check-cast v9, Lmq4;

    .line 203
    .line 204
    iget-object v9, v6, Lr45;->d:Lds4;

    .line 205
    .line 206
    sget-object v10, Le05;->c1:Ld05;

    .line 207
    .line 208
    invoke-virtual {v9, v4, v10}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 209
    .line 210
    .line 211
    move-result v9

    .line 212
    if-eqz v9, :cond_0

    .line 213
    .line 214
    const-string v9, "no_data_mode_events"

    .line 215
    .line 216
    invoke-virtual {v5, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    add-int/2addr v8, v0

    .line 221
    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    goto :goto_2

    .line 224
    :cond_0
    :goto_0
    if-lez v8, :cond_1

    .line 225
    .line 226
    iget-object v0, v6, Lr45;->f:La25;

    .line 227
    .line 228
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 229
    .line 230
    .line 231
    iget-object v0, v0, La25;->n:Lx15;

    .line 232
    .line 233
    const-string v5, "Deleted application data. app, records"

    .line 234
    .line 235
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 236
    .line 237
    .line 238
    move-result-object v7

    .line 239
    invoke-virtual {v0, v3, v7, v5}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    .line 241
    .line 242
    :cond_1
    :goto_1
    move-object v3, v4

    .line 243
    goto :goto_3

    .line 244
    :goto_2
    iget-object v5, v6, Lr45;->f:La25;

    .line 245
    .line 246
    invoke-static {v5}, Lr45;->l(Lq55;)V

    .line 247
    .line 248
    .line 249
    iget-object v5, v5, La25;->f:Lx15;

    .line 250
    .line 251
    invoke-static {v3}, La25;->D(Ljava/lang/String;)Ly15;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    const-string v6, "Error deleting application data. appId, error"

    .line 256
    .line 257
    invoke-virtual {v5, v3, v0, v6}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    goto :goto_1

    .line 261
    :cond_2
    :goto_3
    if-eqz v3, :cond_6

    .line 262
    .line 263
    invoke-virtual {v3}, Lm25;->Q()J

    .line 264
    .line 265
    .line 266
    move-result-wide v5

    .line 267
    const-wide/32 v7, -0x80000000

    .line 268
    .line 269
    .line 270
    cmp-long v0, v5, v7

    .line 271
    .line 272
    const/4 v5, 0x1

    .line 273
    const/4 v6, 0x0

    .line 274
    if-eqz v0, :cond_3

    .line 275
    .line 276
    invoke-virtual {v3}, Lm25;->Q()J

    .line 277
    .line 278
    .line 279
    move-result-wide v9

    .line 280
    iget-wide v11, v2, Lvc5;->w:J

    .line 281
    .line 282
    cmp-long v0, v9, v11

    .line 283
    .line 284
    if-eqz v0, :cond_3

    .line 285
    .line 286
    move v0, v5

    .line 287
    goto :goto_4

    .line 288
    :cond_3
    move v0, v6

    .line 289
    :goto_4
    invoke-virtual {v3}, Lm25;->O()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v9

    .line 293
    invoke-virtual {v3}, Lm25;->Q()J

    .line 294
    .line 295
    .line 296
    move-result-wide v10

    .line 297
    cmp-long v3, v10, v7

    .line 298
    .line 299
    if-nez v3, :cond_4

    .line 300
    .line 301
    if-eqz v9, :cond_4

    .line 302
    .line 303
    iget-object v3, v2, Lvc5;->p:Ljava/lang/String;

    .line 304
    .line 305
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result v3

    .line 309
    if-nez v3, :cond_4

    .line 310
    .line 311
    goto :goto_5

    .line 312
    :cond_4
    move v5, v6

    .line 313
    :goto_5
    or-int/2addr v0, v5

    .line 314
    if-eqz v0, :cond_6

    .line 315
    .line 316
    new-instance v0, Landroid/os/Bundle;

    .line 317
    .line 318
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 319
    .line 320
    .line 321
    const-string v3, "_pv"

    .line 322
    .line 323
    invoke-virtual {v0, v3, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    new-instance v10, Lbu4;

    .line 327
    .line 328
    new-instance v12, Lzt4;

    .line 329
    .line 330
    invoke-direct {v12, v0}, Lzt4;-><init>(Landroid/os/Bundle;)V

    .line 331
    .line 332
    .line 333
    const-string v11, "_au"

    .line 334
    .line 335
    const-wide/16 v16, 0x0

    .line 336
    .line 337
    const-string v13, "auto"

    .line 338
    .line 339
    move-wide/from16 v14, p2

    .line 340
    .line 341
    invoke-direct/range {v10 .. v17}, Lbu4;-><init>(Ljava/lang/String;Lzt4;Ljava/lang/String;JJ)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v1}, Lpb5;->e0()Lds4;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    sget-object v3, Le05;->X0:Ld05;

    .line 349
    .line 350
    invoke-virtual {v0, v4, v3}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 351
    .line 352
    .line 353
    move-result v0

    .line 354
    if-eqz v0, :cond_5

    .line 355
    .line 356
    invoke-virtual {v1, v10, v2}, Lpb5;->i(Lbu4;Lvc5;)V

    .line 357
    .line 358
    .line 359
    return-void

    .line 360
    :cond_5
    invoke-virtual {v1, v10, v2}, Lpb5;->j(Lbu4;Lvc5;)V

    .line 361
    .line 362
    .line 363
    :cond_6
    return-void
.end method

.method public final c()La25;
    .locals 0

    .line 1
    iget-object p0, p0, Lpb5;->l:Lr45;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lr45;

    .line 8
    .line 9
    iget-object p0, p0, Lr45;->f:La25;

    .line 10
    .line 11
    invoke-static {p0}, Lr45;->l(Lq55;)V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public final c0(Lvc5;)Lm25;
    .locals 12

    .line 1
    invoke-virtual {p0}, Lpb5;->d()Lj45;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lj45;->v()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lpb5;->l0()V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    iget-object v2, p1, Lvc5;->n:Ljava/lang/String;

    .line 15
    .line 16
    iget-boolean v0, p1, Lvc5;->A:Z

    .line 17
    .line 18
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    iget-object v1, p1, Lvc5;->G:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-nez v3, :cond_0

    .line 28
    .line 29
    new-instance v3, Lnb5;

    .line 30
    .line 31
    invoke-direct {v3, p0, v1}, Lnb5;-><init>(Lpb5;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lpb5;->D:Ljava/util/HashMap;

    .line 35
    .line 36
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-object v1, p0, Lpb5;->c:Lat4;

    .line 40
    .line 41
    invoke-static {v1}, Lpb5;->T(Lab5;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Lat4;->z0(Ljava/lang/String;)Lm25;

    .line 45
    .line 46
    .line 47
    move-result-object v8

    .line 48
    invoke-virtual {p0, v2}, Lpb5;->a(Ljava/lang/String;)Ly55;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iget-object v3, p1, Lvc5;->F:Ljava/lang/String;

    .line 53
    .line 54
    const/16 v4, 0x64

    .line 55
    .line 56
    invoke-static {v4, v3}, Ly55;->c(ILjava/lang/String;)Ly55;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v1, v3}, Ly55;->j(Ly55;)Ly55;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iget-object v3, p0, Lpb5;->i:Lr95;

    .line 65
    .line 66
    invoke-virtual {v3, p1, v1}, Lr95;->B(Lvc5;Ly55;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    const/4 v9, 0x1

    .line 71
    sget-object v4, Lx55;->o:Lx55;

    .line 72
    .line 73
    sget-object v5, Lx55;->p:Lx55;

    .line 74
    .line 75
    const/4 v10, 0x0

    .line 76
    if-nez v8, :cond_3

    .line 77
    .line 78
    new-instance v8, Lm25;

    .line 79
    .line 80
    iget-object v6, p0, Lpb5;->l:Lr45;

    .line 81
    .line 82
    invoke-direct {v8, v6, v2}, Lm25;-><init>(Lr45;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v5}, Ly55;->i(Lx55;)Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_1

    .line 90
    .line 91
    invoke-virtual {p0, v1}, Lpb5;->o(Ly55;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v8, v2}, Lm25;->G(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :cond_1
    invoke-virtual {v1, v4}, Ly55;->i(Lx55;)Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_2

    .line 103
    .line 104
    invoke-virtual {v8, v3}, Lm25;->J(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :cond_2
    :goto_0
    move v11, v10

    .line 108
    goto/16 :goto_2

    .line 109
    .line 110
    :cond_3
    iget-object v6, v8, Lm25;->a:Lr45;

    .line 111
    .line 112
    invoke-virtual {v1, v4}, Ly55;->i(Lx55;)Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-eqz v4, :cond_6

    .line 117
    .line 118
    if-eqz v3, :cond_6

    .line 119
    .line 120
    iget-object v4, v6, Lr45;->g:Lj45;

    .line 121
    .line 122
    invoke-static {v4}, Lr45;->l(Lq55;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4}, Lj45;->v()V

    .line 126
    .line 127
    .line 128
    iget-object v4, v8, Lm25;->e:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    if-nez v4, :cond_6

    .line 135
    .line 136
    iget-object v4, v6, Lr45;->g:Lj45;

    .line 137
    .line 138
    invoke-static {v4}, Lr45;->l(Lq55;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v4}, Lj45;->v()V

    .line 142
    .line 143
    .line 144
    iget-object v4, v8, Lm25;->e:Ljava/lang/String;

    .line 145
    .line 146
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    invoke-virtual {v8, v3}, Lm25;->J(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    if-eqz v0, :cond_5

    .line 154
    .line 155
    iget-object v3, p0, Lpb5;->i:Lr95;

    .line 156
    .line 157
    invoke-virtual {v3, p1, v1}, Lr95;->z(Lvc5;Ly55;)Landroid/util/Pair;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 162
    .line 163
    const-string v6, "00000000-0000-0000-0000-000000000000"

    .line 164
    .line 165
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    if-nez v3, :cond_5

    .line 170
    .line 171
    if-nez v4, :cond_5

    .line 172
    .line 173
    invoke-virtual {v1, v5}, Ly55;->i(Lx55;)Z

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    if-eqz v3, :cond_4

    .line 178
    .line 179
    invoke-virtual {p0, v1}, Lpb5;->o(Ly55;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-virtual {v8, v1}, Lm25;->G(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    move v11, v10

    .line 187
    goto :goto_1

    .line 188
    :cond_4
    move v11, v9

    .line 189
    :goto_1
    iget-object v1, p0, Lpb5;->c:Lat4;

    .line 190
    .line 191
    invoke-static {v1}, Lpb5;->T(Lab5;)V

    .line 192
    .line 193
    .line 194
    const-string v3, "_id"

    .line 195
    .line 196
    invoke-virtual {v1, v2, v3}, Lat4;->r0(Ljava/lang/String;Ljava/lang/String;)Lxb5;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    if-eqz v1, :cond_7

    .line 201
    .line 202
    iget-object v1, p0, Lpb5;->c:Lat4;

    .line 203
    .line 204
    invoke-static {v1}, Lpb5;->T(Lab5;)V

    .line 205
    .line 206
    .line 207
    const-string v3, "_lair"

    .line 208
    .line 209
    invoke-virtual {v1, v2, v3}, Lat4;->r0(Ljava/lang/String;Ljava/lang/String;)Lxb5;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    if-nez v1, :cond_7

    .line 214
    .line 215
    invoke-virtual {p0}, Lpb5;->f()Lcom/google/android/gms/common/util/Clock;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 220
    .line 221
    .line 222
    move-result-wide v5

    .line 223
    new-instance v1, Lxb5;

    .line 224
    .line 225
    const-wide/16 v3, 0x1

    .line 226
    .line 227
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 228
    .line 229
    .line 230
    move-result-object v7

    .line 231
    const-string v3, "auto"

    .line 232
    .line 233
    const-string v4, "_lair"

    .line 234
    .line 235
    invoke-direct/range {v1 .. v7}, Lxb5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    iget-object v2, p0, Lpb5;->c:Lat4;

    .line 239
    .line 240
    invoke-static {v2}, Lpb5;->T(Lab5;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v2, v1}, Lat4;->q0(Lxb5;)Z

    .line 244
    .line 245
    .line 246
    goto :goto_2

    .line 247
    :cond_5
    invoke-virtual {v8}, Lm25;->F()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    if-eqz v2, :cond_2

    .line 256
    .line 257
    invoke-virtual {v1, v5}, Ly55;->i(Lx55;)Z

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    if-eqz v2, :cond_2

    .line 262
    .line 263
    invoke-virtual {p0, v1}, Lpb5;->o(Ly55;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    invoke-virtual {v8, v1}, Lm25;->G(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    goto/16 :goto_0

    .line 271
    .line 272
    :cond_6
    invoke-virtual {v8}, Lm25;->F()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 277
    .line 278
    .line 279
    move-result v2

    .line 280
    if-eqz v2, :cond_2

    .line 281
    .line 282
    invoke-virtual {v1, v5}, Ly55;->i(Lx55;)Z

    .line 283
    .line 284
    .line 285
    move-result v2

    .line 286
    if-eqz v2, :cond_2

    .line 287
    .line 288
    invoke-virtual {p0, v1}, Lpb5;->o(Ly55;)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    invoke-virtual {v8, v1}, Lm25;->G(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    goto/16 :goto_0

    .line 296
    .line 297
    :cond_7
    :goto_2
    iget-object v1, v8, Lm25;->a:Lr45;

    .line 298
    .line 299
    iget-object v2, p1, Lvc5;->o:Ljava/lang/String;

    .line 300
    .line 301
    invoke-virtual {v8, v2}, Lm25;->I(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    iget-object v2, p1, Lvc5;->x:Ljava/lang/String;

    .line 305
    .line 306
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 307
    .line 308
    .line 309
    move-result v3

    .line 310
    if-nez v3, :cond_8

    .line 311
    .line 312
    invoke-virtual {v8, v2}, Lm25;->L(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    :cond_8
    iget-wide v2, p1, Lvc5;->r:J

    .line 316
    .line 317
    const-wide/16 v4, 0x0

    .line 318
    .line 319
    cmp-long v4, v2, v4

    .line 320
    .line 321
    if-eqz v4, :cond_9

    .line 322
    .line 323
    invoke-virtual {v8, v2, v3}, Lm25;->T(J)V

    .line 324
    .line 325
    .line 326
    :cond_9
    iget-object v2, p1, Lvc5;->p:Ljava/lang/String;

    .line 327
    .line 328
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 329
    .line 330
    .line 331
    move-result v3

    .line 332
    if-nez v3, :cond_a

    .line 333
    .line 334
    invoke-virtual {v8, v2}, Lm25;->P(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    :cond_a
    iget-wide v2, p1, Lvc5;->w:J

    .line 338
    .line 339
    invoke-virtual {v8, v2, v3}, Lm25;->R(J)V

    .line 340
    .line 341
    .line 342
    iget-object v2, p1, Lvc5;->q:Ljava/lang/String;

    .line 343
    .line 344
    if-eqz v2, :cond_b

    .line 345
    .line 346
    invoke-virtual {v8, v2}, Lm25;->S(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    :cond_b
    iget-wide v2, p1, Lvc5;->s:J

    .line 350
    .line 351
    invoke-virtual {v8, v2, v3}, Lm25;->a(J)V

    .line 352
    .line 353
    .line 354
    iget-boolean v2, p1, Lvc5;->u:Z

    .line 355
    .line 356
    invoke-virtual {v8, v2}, Lm25;->d(Z)V

    .line 357
    .line 358
    .line 359
    iget-object v2, p1, Lvc5;->t:Ljava/lang/String;

    .line 360
    .line 361
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 362
    .line 363
    .line 364
    move-result v3

    .line 365
    if-nez v3, :cond_c

    .line 366
    .line 367
    invoke-virtual {v8, v2}, Lm25;->w(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    :cond_c
    iget-object v2, v1, Lr45;->g:Lj45;

    .line 371
    .line 372
    invoke-static {v2}, Lr45;->l(Lq55;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v2}, Lj45;->v()V

    .line 376
    .line 377
    .line 378
    iget-boolean v2, v8, Lm25;->R:Z

    .line 379
    .line 380
    iget-boolean v3, v8, Lm25;->p:Z

    .line 381
    .line 382
    if-eq v3, v0, :cond_d

    .line 383
    .line 384
    move v3, v9

    .line 385
    goto :goto_3

    .line 386
    :cond_d
    move v3, v10

    .line 387
    :goto_3
    or-int/2addr v2, v3

    .line 388
    iput-boolean v2, v8, Lm25;->R:Z

    .line 389
    .line 390
    iput-boolean v0, v8, Lm25;->p:Z

    .line 391
    .line 392
    iget-object v0, p1, Lvc5;->C:Ljava/lang/Boolean;

    .line 393
    .line 394
    iget-object v2, v1, Lr45;->g:Lj45;

    .line 395
    .line 396
    invoke-static {v2}, Lr45;->l(Lq55;)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v2}, Lj45;->v()V

    .line 400
    .line 401
    .line 402
    iget-boolean v2, v8, Lm25;->R:Z

    .line 403
    .line 404
    iget-object v3, v8, Lm25;->q:Ljava/lang/Boolean;

    .line 405
    .line 406
    invoke-static {v3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 407
    .line 408
    .line 409
    move-result v3

    .line 410
    xor-int/2addr v3, v9

    .line 411
    or-int/2addr v2, v3

    .line 412
    iput-boolean v2, v8, Lm25;->R:Z

    .line 413
    .line 414
    iput-object v0, v8, Lm25;->q:Ljava/lang/Boolean;

    .line 415
    .line 416
    iget-wide v2, p1, Lvc5;->D:J

    .line 417
    .line 418
    invoke-virtual {v8, v2, v3}, Lm25;->c(J)V

    .line 419
    .line 420
    .line 421
    iget-object v0, p1, Lvc5;->H:Ljava/lang/String;

    .line 422
    .line 423
    iget-object v2, v1, Lr45;->g:Lj45;

    .line 424
    .line 425
    invoke-static {v2}, Lr45;->l(Lq55;)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v2}, Lj45;->v()V

    .line 429
    .line 430
    .line 431
    iget-boolean v2, v8, Lm25;->R:Z

    .line 432
    .line 433
    iget-object v3, v8, Lm25;->t:Ljava/lang/String;

    .line 434
    .line 435
    invoke-static {v3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 436
    .line 437
    .line 438
    move-result v3

    .line 439
    xor-int/2addr v3, v9

    .line 440
    or-int/2addr v2, v3

    .line 441
    iput-boolean v2, v8, Lm25;->R:Z

    .line 442
    .line 443
    iput-object v0, v8, Lm25;->t:Ljava/lang/String;

    .line 444
    .line 445
    sget-object v0, Lnq4;->o:Lnq4;

    .line 446
    .line 447
    iget-object v2, v0, Lnq4;->n:Lfu3;

    .line 448
    .line 449
    iget-object v2, v2, Lfu3;->n:Ljava/lang/Object;

    .line 450
    .line 451
    check-cast v2, Loq4;

    .line 452
    .line 453
    invoke-virtual {p0}, Lpb5;->e0()Lds4;

    .line 454
    .line 455
    .line 456
    move-result-object v2

    .line 457
    sget-object v3, Le05;->L0:Ld05;

    .line 458
    .line 459
    const/4 v4, 0x0

    .line 460
    invoke-virtual {v2, v4, v3}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 461
    .line 462
    .line 463
    move-result v2

    .line 464
    if-eqz v2, :cond_e

    .line 465
    .line 466
    iget-object v0, p1, Lvc5;->E:Ljava/util/List;

    .line 467
    .line 468
    invoke-virtual {v8, v0}, Lm25;->y(Ljava/util/List;)V

    .line 469
    .line 470
    .line 471
    goto :goto_4

    .line 472
    :cond_e
    iget-object v0, v0, Lnq4;->n:Lfu3;

    .line 473
    .line 474
    iget-object v0, v0, Lfu3;->n:Ljava/lang/Object;

    .line 475
    .line 476
    check-cast v0, Loq4;

    .line 477
    .line 478
    invoke-virtual {p0}, Lpb5;->e0()Lds4;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    sget-object v2, Le05;->K0:Ld05;

    .line 483
    .line 484
    invoke-virtual {v0, v4, v2}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 485
    .line 486
    .line 487
    move-result v0

    .line 488
    if-eqz v0, :cond_f

    .line 489
    .line 490
    invoke-virtual {v8, v4}, Lm25;->y(Ljava/util/List;)V

    .line 491
    .line 492
    .line 493
    :cond_f
    :goto_4
    iget-boolean v0, p1, Lvc5;->I:Z

    .line 494
    .line 495
    iget-object v2, v1, Lr45;->g:Lj45;

    .line 496
    .line 497
    invoke-static {v2}, Lr45;->l(Lq55;)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v2}, Lj45;->v()V

    .line 501
    .line 502
    .line 503
    iget-boolean v2, v8, Lm25;->R:Z

    .line 504
    .line 505
    iget-boolean v3, v8, Lm25;->u:Z

    .line 506
    .line 507
    if-eq v3, v0, :cond_10

    .line 508
    .line 509
    move v3, v9

    .line 510
    goto :goto_5

    .line 511
    :cond_10
    move v3, v10

    .line 512
    :goto_5
    or-int/2addr v2, v3

    .line 513
    iput-boolean v2, v8, Lm25;->R:Z

    .line 514
    .line 515
    iput-boolean v0, v8, Lm25;->u:Z

    .line 516
    .line 517
    iget-object v0, p1, Lvc5;->O:Ljava/lang/String;

    .line 518
    .line 519
    iget-object v2, v1, Lr45;->g:Lj45;

    .line 520
    .line 521
    invoke-static {v2}, Lr45;->l(Lq55;)V

    .line 522
    .line 523
    .line 524
    invoke-virtual {v2}, Lj45;->v()V

    .line 525
    .line 526
    .line 527
    iget-boolean v2, v8, Lm25;->R:Z

    .line 528
    .line 529
    iget-object v3, v8, Lm25;->C:Ljava/lang/String;

    .line 530
    .line 531
    if-eq v3, v0, :cond_11

    .line 532
    .line 533
    move v3, v9

    .line 534
    goto :goto_6

    .line 535
    :cond_11
    move v3, v10

    .line 536
    :goto_6
    or-int/2addr v2, v3

    .line 537
    iput-boolean v2, v8, Lm25;->R:Z

    .line 538
    .line 539
    iput-object v0, v8, Lm25;->C:Ljava/lang/String;

    .line 540
    .line 541
    invoke-static {}, Ler4;->a()V

    .line 542
    .line 543
    .line 544
    invoke-virtual {p0}, Lpb5;->e0()Lds4;

    .line 545
    .line 546
    .line 547
    move-result-object v0

    .line 548
    sget-object v2, Le05;->O0:Ld05;

    .line 549
    .line 550
    invoke-virtual {v0, v4, v2}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 551
    .line 552
    .line 553
    move-result v0

    .line 554
    if-eqz v0, :cond_13

    .line 555
    .line 556
    iget v0, p1, Lvc5;->M:I

    .line 557
    .line 558
    iget-object v2, v1, Lr45;->g:Lj45;

    .line 559
    .line 560
    invoke-static {v2}, Lr45;->l(Lq55;)V

    .line 561
    .line 562
    .line 563
    invoke-virtual {v2}, Lj45;->v()V

    .line 564
    .line 565
    .line 566
    iget-boolean v2, v8, Lm25;->R:Z

    .line 567
    .line 568
    iget v3, v8, Lm25;->x:I

    .line 569
    .line 570
    if-eq v3, v0, :cond_12

    .line 571
    .line 572
    move v3, v9

    .line 573
    goto :goto_7

    .line 574
    :cond_12
    move v3, v10

    .line 575
    :goto_7
    or-int/2addr v2, v3

    .line 576
    iput-boolean v2, v8, Lm25;->R:Z

    .line 577
    .line 578
    iput v0, v8, Lm25;->x:I

    .line 579
    .line 580
    :cond_13
    iget-wide v2, p1, Lvc5;->J:J

    .line 581
    .line 582
    invoke-virtual {v8, v2, v3}, Lm25;->A(J)V

    .line 583
    .line 584
    .line 585
    iget-object v0, p1, Lvc5;->P:Ljava/lang/String;

    .line 586
    .line 587
    iget-object v2, v1, Lr45;->g:Lj45;

    .line 588
    .line 589
    invoke-static {v2}, Lr45;->l(Lq55;)V

    .line 590
    .line 591
    .line 592
    invoke-virtual {v2}, Lj45;->v()V

    .line 593
    .line 594
    .line 595
    iget-boolean v2, v8, Lm25;->R:Z

    .line 596
    .line 597
    iget-object v3, v8, Lm25;->G:Ljava/lang/String;

    .line 598
    .line 599
    if-eq v3, v0, :cond_14

    .line 600
    .line 601
    move v3, v9

    .line 602
    goto :goto_8

    .line 603
    :cond_14
    move v3, v10

    .line 604
    :goto_8
    or-int/2addr v2, v3

    .line 605
    iput-boolean v2, v8, Lm25;->R:Z

    .line 606
    .line 607
    iput-object v0, v8, Lm25;->G:Ljava/lang/String;

    .line 608
    .line 609
    iget p1, p1, Lvc5;->R:I

    .line 610
    .line 611
    iget-object v0, v1, Lr45;->g:Lj45;

    .line 612
    .line 613
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 614
    .line 615
    .line 616
    invoke-virtual {v0}, Lj45;->v()V

    .line 617
    .line 618
    .line 619
    iget-boolean v0, v8, Lm25;->R:Z

    .line 620
    .line 621
    iget v1, v8, Lm25;->I:I

    .line 622
    .line 623
    if-eq v1, p1, :cond_15

    .line 624
    .line 625
    move v10, v9

    .line 626
    :cond_15
    or-int/2addr v0, v10

    .line 627
    iput-boolean v0, v8, Lm25;->R:Z

    .line 628
    .line 629
    iput p1, v8, Lm25;->I:I

    .line 630
    .line 631
    invoke-virtual {v8}, Lm25;->o()Z

    .line 632
    .line 633
    .line 634
    move-result p1

    .line 635
    if-nez p1, :cond_17

    .line 636
    .line 637
    if-eqz v11, :cond_16

    .line 638
    .line 639
    goto :goto_9

    .line 640
    :cond_16
    return-object v8

    .line 641
    :cond_17
    move v9, v11

    .line 642
    :goto_9
    iget-object p0, p0, Lpb5;->c:Lat4;

    .line 643
    .line 644
    invoke-static {p0}, Lpb5;->T(Lab5;)V

    .line 645
    .line 646
    .line 647
    invoke-virtual {p0, v8, v9}, Lat4;->A0(Lm25;Z)V

    .line 648
    .line 649
    .line 650
    return-object v8
.end method

.method public final d()Lj45;
    .locals 0

    .line 1
    iget-object p0, p0, Lpb5;->l:Lr45;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lr45;

    .line 8
    .line 9
    iget-object p0, p0, Lr45;->g:Lj45;

    .line 10
    .line 11
    invoke-static {p0}, Lr45;->l(Lq55;)V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public final d0(Landroid/os/Bundle;Lvc5;)Ljava/util/List;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual {v1}, Lpb5;->d()Lj45;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-virtual {v3}, Lj45;->v()V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Ler4;->a()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lpb5;->e0()Lds4;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    iget-object v4, v2, Lvc5;->n:Ljava/lang/String;

    .line 22
    .line 23
    sget-object v5, Le05;->O0:Ld05;

    .line 24
    .line 25
    invoke-virtual {v3, v4, v5}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_9

    .line 30
    .line 31
    if-nez v4, :cond_0

    .line 32
    .line 33
    goto/16 :goto_8

    .line 34
    .line 35
    :cond_0
    if-eqz v0, :cond_3

    .line 36
    .line 37
    const-string v5, "uriSources"

    .line 38
    .line 39
    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    const-string v6, "uriTimestamps"

    .line 44
    .line 45
    invoke-virtual {v0, v6}, Landroid/os/BaseBundle;->getLongArray(Ljava/lang/String;)[J

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    if-eqz v5, :cond_3

    .line 50
    .line 51
    if-eqz v6, :cond_2

    .line 52
    .line 53
    array-length v0, v6

    .line 54
    array-length v7, v5

    .line 55
    if-eq v0, v7, :cond_1

    .line 56
    .line 57
    goto/16 :goto_3

    .line 58
    .line 59
    :cond_1
    const/4 v7, 0x0

    .line 60
    :goto_0
    array-length v0, v5

    .line 61
    if-ge v7, v0, :cond_3

    .line 62
    .line 63
    iget-object v0, v1, Lpb5;->c:Lat4;

    .line 64
    .line 65
    invoke-static {v0}, Lpb5;->T(Lab5;)V

    .line 66
    .line 67
    .line 68
    iget-object v8, v0, Lib0;->a:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v8, Lr45;

    .line 71
    .line 72
    aget v9, v5, v7

    .line 73
    .line 74
    aget-wide v10, v6, v7

    .line 75
    .line 76
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Lib0;->v()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Lab5;->w()V

    .line 83
    .line 84
    .line 85
    const-string v12, " trigger URIs. appId, source, timestamp"

    .line 86
    .line 87
    const-string v13, "Pruned "

    .line 88
    .line 89
    :try_start_0
    invoke-virtual {v0}, Lat4;->m0()Landroid/database/sqlite/SQLiteDatabase;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const-string v14, "trigger_uris"

    .line 94
    .line 95
    const-string v15, "app_id=? and source=? and timestamp_millis<=?"

    .line 96
    .line 97
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 101
    move-object/from16 v16, v5

    .line 102
    .line 103
    :try_start_1
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    filled-new-array {v4, v3, v5}, [Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-virtual {v0, v14, v15, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    iget-object v3, v8, Lr45;->f:La25;

    .line 116
    .line 117
    invoke-static {v3}, Lr45;->l(Lq55;)V

    .line 118
    .line 119
    .line 120
    iget-object v3, v3, La25;->n:Lx15;

    .line 121
    .line 122
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    add-int/lit8 v5, v5, 0x2e

    .line 131
    .line 132
    new-instance v14, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v14, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 155
    .line 156
    .line 157
    move-result-object v9

    .line 158
    invoke-virtual {v3, v0, v4, v5, v9}, Lx15;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 159
    .line 160
    .line 161
    goto :goto_2

    .line 162
    :catch_0
    move-exception v0

    .line 163
    goto :goto_1

    .line 164
    :catch_1
    move-exception v0

    .line 165
    move-object/from16 v16, v5

    .line 166
    .line 167
    :goto_1
    iget-object v3, v8, Lr45;->f:La25;

    .line 168
    .line 169
    invoke-static {v3}, Lr45;->l(Lq55;)V

    .line 170
    .line 171
    .line 172
    iget-object v3, v3, La25;->f:Lx15;

    .line 173
    .line 174
    invoke-static {v4}, La25;->D(Ljava/lang/String;)Ly15;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    const-string v8, "Error pruning trigger URIs. appId"

    .line 179
    .line 180
    invoke-virtual {v3, v5, v0, v8}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 184
    .line 185
    move-object/from16 v5, v16

    .line 186
    .line 187
    goto :goto_0

    .line 188
    :cond_2
    :goto_3
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    iget-object v0, v0, La25;->f:Lx15;

    .line 193
    .line 194
    const-string v3, "Uri sources and timestamps do not match"

    .line 195
    .line 196
    invoke-virtual {v0, v3}, Lx15;->a(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    :cond_3
    iget-object v1, v1, Lpb5;->c:Lat4;

    .line 200
    .line 201
    invoke-static {v1}, Lpb5;->T(Lab5;)V

    .line 202
    .line 203
    .line 204
    iget-object v2, v2, Lvc5;->n:Ljava/lang/String;

    .line 205
    .line 206
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1}, Lib0;->v()V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1}, Lab5;->w()V

    .line 213
    .line 214
    .line 215
    new-instance v0, Ljava/util/ArrayList;

    .line 216
    .line 217
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .line 219
    .line 220
    const/4 v3, 0x0

    .line 221
    :try_start_2
    invoke-virtual {v1}, Lat4;->m0()Landroid/database/sqlite/SQLiteDatabase;

    .line 222
    .line 223
    .line 224
    move-result-object v4

    .line 225
    const-string v5, "trigger_uris"

    .line 226
    .line 227
    const-string v6, "trigger_uri"

    .line 228
    .line 229
    const-string v7, "timestamp_millis"

    .line 230
    .line 231
    const-string v8, "source"

    .line 232
    .line 233
    filled-new-array {v6, v7, v8}, [Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v6

    .line 237
    const-string v7, "app_id=?"

    .line 238
    .line 239
    filled-new-array {v2}, [Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v8

    .line 243
    const-string v11, "rowid"

    .line 244
    .line 245
    const/4 v12, 0x0

    .line 246
    const/4 v9, 0x0

    .line 247
    const/4 v10, 0x0

    .line 248
    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 249
    .line 250
    .line 251
    move-result-object v3

    .line 252
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 253
    .line 254
    .line 255
    move-result v4

    .line 256
    if-eqz v4, :cond_6

    .line 257
    .line 258
    const/4 v4, 0x0

    .line 259
    :cond_4
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v5

    .line 263
    if-nez v5, :cond_5

    .line 264
    .line 265
    const-string v5, ""

    .line 266
    .line 267
    goto :goto_4

    .line 268
    :catchall_0
    move-exception v0

    .line 269
    goto :goto_7

    .line 270
    :catch_2
    move-exception v0

    .line 271
    goto :goto_5

    .line 272
    :cond_5
    :goto_4
    const/4 v6, 0x1

    .line 273
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    .line 274
    .line 275
    .line 276
    move-result-wide v6

    .line 277
    const/4 v8, 0x2

    .line 278
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    .line 279
    .line 280
    .line 281
    move-result v8

    .line 282
    new-instance v9, Loa5;

    .line 283
    .line 284
    invoke-direct {v9, v5, v8, v6, v7}, Loa5;-><init>(Ljava/lang/String;IJ)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 291
    .line 292
    .line 293
    move-result v5
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 294
    if-nez v5, :cond_4

    .line 295
    .line 296
    goto :goto_6

    .line 297
    :goto_5
    :try_start_3
    iget-object v1, v1, Lib0;->a:Ljava/lang/Object;

    .line 298
    .line 299
    check-cast v1, Lr45;

    .line 300
    .line 301
    iget-object v1, v1, Lr45;->f:La25;

    .line 302
    .line 303
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 304
    .line 305
    .line 306
    iget-object v1, v1, La25;->f:Lx15;

    .line 307
    .line 308
    const-string v4, "Error querying trigger uris. appId"

    .line 309
    .line 310
    invoke-static {v2}, La25;->D(Ljava/lang/String;)Ly15;

    .line 311
    .line 312
    .line 313
    move-result-object v2

    .line 314
    invoke-virtual {v1, v2, v0, v4}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 318
    .line 319
    :cond_6
    :goto_6
    if-eqz v3, :cond_7

    .line 320
    .line 321
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 322
    .line 323
    .line 324
    :cond_7
    return-object v0

    .line 325
    :goto_7
    if-eqz v3, :cond_8

    .line 326
    .line 327
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 328
    .line 329
    .line 330
    :cond_8
    throw v0

    .line 331
    :cond_9
    :goto_8
    new-instance v0, Ljava/util/ArrayList;

    .line 332
    .line 333
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .line 335
    .line 336
    return-object v0
.end method

.method public final e()Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lpb5;->l:Lr45;

    .line 2
    .line 3
    iget-object p0, p0, Lr45;->a:Landroid/content/Context;

    .line 4
    .line 5
    return-object p0
.end method

.method public final e0()Lds4;
    .locals 0

    .line 1
    iget-object p0, p0, Lpb5;->l:Lr45;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lr45;

    .line 8
    .line 9
    iget-object p0, p0, Lr45;->d:Lds4;

    .line 10
    .line 11
    return-object p0
.end method

.method public final f()Lcom/google/android/gms/common/util/Clock;
    .locals 0

    .line 1
    iget-object p0, p0, Lpb5;->l:Lr45;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lr45;

    .line 8
    .line 9
    iget-object p0, p0, Lr45;->k:Lcom/google/android/gms/common/util/Clock;

    .line 10
    .line 11
    return-object p0
.end method

.method public final f0()Lw35;
    .locals 0

    .line 1
    iget-object p0, p0, Lpb5;->a:Lw35;

    .line 2
    .line 3
    invoke-static {p0}, Lpb5;->T(Lab5;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final g()J
    .locals 7

    .line 1
    invoke-virtual {p0}, Lpb5;->f()Lcom/google/android/gms/common/util/Clock;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iget-object p0, p0, Lpb5;->i:Lr95;

    .line 10
    .line 11
    invoke-virtual {p0}, Lab5;->w()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lib0;->v()V

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lr95;->j:Ly25;

    .line 18
    .line 19
    invoke-virtual {v2}, Ly25;->a()J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    const-wide/16 v5, 0x0

    .line 24
    .line 25
    cmp-long v5, v3, v5

    .line 26
    .line 27
    if-nez v5, :cond_0

    .line 28
    .line 29
    iget-object p0, p0, Lib0;->a:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p0, Lr45;

    .line 32
    .line 33
    iget-object p0, p0, Lr45;->i:Lac5;

    .line 34
    .line 35
    invoke-static {p0}, Lr45;->j(Lib0;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lac5;->t0()Ljava/security/SecureRandom;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    const v3, 0x5265c00

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v3}, Ljava/util/Random;->nextInt(I)I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    int-to-long v3, p0

    .line 50
    const-wide/16 v5, 0x1

    .line 51
    .line 52
    add-long/2addr v3, v5

    .line 53
    invoke-virtual {v2, v3, v4}, Ly25;->b(J)V

    .line 54
    .line 55
    .line 56
    :cond_0
    add-long/2addr v0, v3

    .line 57
    const-wide/16 v2, 0x3e8

    .line 58
    .line 59
    div-long/2addr v0, v2

    .line 60
    const-wide/16 v2, 0x3c

    .line 61
    .line 62
    div-long/2addr v0, v2

    .line 63
    div-long/2addr v0, v2

    .line 64
    const-wide/16 v2, 0x18

    .line 65
    .line 66
    div-long/2addr v0, v2

    .line 67
    return-wide v0
.end method

.method public final g0()Lat4;
    .locals 0

    .line 1
    iget-object p0, p0, Lpb5;->c:Lat4;

    .line 2
    .line 3
    invoke-static {p0}, Lpb5;->T(Lab5;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final h(Ljava/lang/String;Lbu4;)V
    .locals 43

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v1, p2

    .line 6
    .line 7
    iget-object v3, v0, Lpb5;->c:Lat4;

    .line 8
    .line 9
    invoke-static {v3}, Lpb5;->T(Lab5;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v3, v2}, Lat4;->z0(Ljava/lang/String;)Lm25;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-eqz v3, :cond_3

    .line 17
    .line 18
    iget-object v4, v3, Lm25;->a:Lr45;

    .line 19
    .line 20
    invoke-virtual {v3}, Lm25;->O()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-eqz v5, :cond_0

    .line 29
    .line 30
    goto/16 :goto_1

    .line 31
    .line 32
    :cond_0
    invoke-virtual {v0, v3}, Lpb5;->P(Lm25;)Ljava/lang/Boolean;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    if-nez v5, :cond_1

    .line 37
    .line 38
    iget-object v5, v1, Lbu4;->n:Ljava/lang/String;

    .line 39
    .line 40
    const-string v6, "_ui"

    .line 41
    .line 42
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-nez v5, :cond_2

    .line 47
    .line 48
    invoke-virtual {v0}, Lpb5;->c()La25;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    iget-object v5, v5, La25;->i:Lx15;

    .line 53
    .line 54
    invoke-static {v2}, La25;->D(Ljava/lang/String;)Ly15;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    const-string v7, "Could not find package. appId"

    .line 59
    .line 60
    invoke-virtual {v5, v6, v7}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-nez v5, :cond_2

    .line 69
    .line 70
    invoke-virtual {v0}, Lpb5;->c()La25;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iget-object v0, v0, La25;->f:Lx15;

    .line 75
    .line 76
    invoke-static {v2}, La25;->D(Ljava/lang/String;)Ly15;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const-string v2, "App version does not match; dropping event. appId"

    .line 81
    .line 82
    invoke-virtual {v0, v1, v2}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_2
    :goto_0
    new-instance v1, Lvc5;

    .line 87
    .line 88
    invoke-virtual {v3}, Lm25;->H()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    invoke-virtual {v3}, Lm25;->O()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    move-object v7, v5

    .line 97
    move-object v8, v6

    .line 98
    invoke-virtual {v3}, Lm25;->Q()J

    .line 99
    .line 100
    .line 101
    move-result-wide v5

    .line 102
    iget-object v9, v4, Lr45;->g:Lj45;

    .line 103
    .line 104
    invoke-static {v9}, Lr45;->l(Lq55;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v9}, Lj45;->v()V

    .line 108
    .line 109
    .line 110
    move-object v9, v7

    .line 111
    iget-object v7, v3, Lm25;->l:Ljava/lang/String;

    .line 112
    .line 113
    iget-object v10, v4, Lr45;->g:Lj45;

    .line 114
    .line 115
    invoke-static {v10}, Lr45;->l(Lq55;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v10}, Lj45;->v()V

    .line 119
    .line 120
    .line 121
    move-object v11, v8

    .line 122
    move-object v10, v9

    .line 123
    iget-wide v8, v3, Lm25;->m:J

    .line 124
    .line 125
    iget-object v12, v4, Lr45;->g:Lj45;

    .line 126
    .line 127
    invoke-static {v12}, Lr45;->l(Lq55;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v12}, Lj45;->v()V

    .line 131
    .line 132
    .line 133
    move-object v12, v10

    .line 134
    move-object v13, v11

    .line 135
    iget-wide v10, v3, Lm25;->n:J

    .line 136
    .line 137
    iget-object v14, v4, Lr45;->g:Lj45;

    .line 138
    .line 139
    invoke-static {v14}, Lr45;->l(Lq55;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v14}, Lj45;->v()V

    .line 143
    .line 144
    .line 145
    move-object v14, v13

    .line 146
    iget-boolean v13, v3, Lm25;->o:Z

    .line 147
    .line 148
    invoke-virtual {v3}, Lm25;->K()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v15

    .line 152
    move-object/from16 v16, v1

    .line 153
    .line 154
    iget-object v1, v4, Lr45;->g:Lj45;

    .line 155
    .line 156
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1}, Lj45;->v()V

    .line 160
    .line 161
    .line 162
    iget-boolean v1, v3, Lm25;->p:Z

    .line 163
    .line 164
    invoke-virtual {v3}, Lm25;->x()Ljava/lang/Boolean;

    .line 165
    .line 166
    .line 167
    move-result-object v21

    .line 168
    invoke-virtual {v3}, Lm25;->b()J

    .line 169
    .line 170
    .line 171
    move-result-wide v22

    .line 172
    move/from16 v19, v1

    .line 173
    .line 174
    iget-object v1, v4, Lr45;->g:Lj45;

    .line 175
    .line 176
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1}, Lj45;->v()V

    .line 180
    .line 181
    .line 182
    iget-object v1, v3, Lm25;->s:Ljava/util/ArrayList;

    .line 183
    .line 184
    invoke-virtual/range {p0 .. p1}, Lpb5;->a(Ljava/lang/String;)Ly55;

    .line 185
    .line 186
    .line 187
    move-result-object v17

    .line 188
    invoke-virtual/range {v17 .. v17}, Ly55;->g()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v25

    .line 192
    invoke-virtual {v3}, Lm25;->z()Z

    .line 193
    .line 194
    .line 195
    move-result v28

    .line 196
    move-object/from16 v24, v1

    .line 197
    .line 198
    iget-object v1, v4, Lr45;->g:Lj45;

    .line 199
    .line 200
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1}, Lj45;->v()V

    .line 204
    .line 205
    .line 206
    iget-wide v1, v3, Lm25;->v:J

    .line 207
    .line 208
    move-wide/from16 v29, v1

    .line 209
    .line 210
    invoke-virtual/range {p0 .. p1}, Lpb5;->a(Ljava/lang/String;)Ly55;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    iget v1, v1, Ly55;->b:I

    .line 215
    .line 216
    invoke-virtual/range {p0 .. p1}, Lpb5;->o0(Ljava/lang/String;)Lrt4;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    iget-object v2, v2, Lrt4;->b:Ljava/lang/String;

    .line 221
    .line 222
    move/from16 v31, v1

    .line 223
    .line 224
    iget-object v1, v4, Lr45;->g:Lj45;

    .line 225
    .line 226
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1}, Lj45;->v()V

    .line 230
    .line 231
    .line 232
    iget v1, v3, Lm25;->x:I

    .line 233
    .line 234
    iget-object v4, v4, Lr45;->g:Lj45;

    .line 235
    .line 236
    invoke-static {v4}, Lr45;->l(Lq55;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v4}, Lj45;->v()V

    .line 240
    .line 241
    .line 242
    move/from16 v33, v1

    .line 243
    .line 244
    move-object/from16 v32, v2

    .line 245
    .line 246
    iget-wide v1, v3, Lm25;->B:J

    .line 247
    .line 248
    invoke-virtual {v3}, Lm25;->D()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v36

    .line 252
    invoke-virtual {v3}, Lm25;->s()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v37

    .line 256
    invoke-virtual {v3}, Lm25;->t()I

    .line 257
    .line 258
    .line 259
    move-result v40

    .line 260
    const-wide/16 v38, 0x0

    .line 261
    .line 262
    const-wide/16 v41, 0x0

    .line 263
    .line 264
    move-object v3, v12

    .line 265
    const/4 v12, 0x0

    .line 266
    move-object v4, v14

    .line 267
    const/4 v14, 0x0

    .line 268
    move-wide/from16 v34, v1

    .line 269
    .line 270
    move-object/from16 v1, v16

    .line 271
    .line 272
    const-wide/16 v16, 0x0

    .line 273
    .line 274
    const/16 v18, 0x0

    .line 275
    .line 276
    const/16 v20, 0x0

    .line 277
    .line 278
    const-string v26, ""

    .line 279
    .line 280
    const/16 v27, 0x0

    .line 281
    .line 282
    move-object/from16 v2, p1

    .line 283
    .line 284
    invoke-direct/range {v1 .. v42}, Lvc5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JIZZLjava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJILjava/lang/String;IJLjava/lang/String;Ljava/lang/String;JIJ)V

    .line 285
    .line 286
    .line 287
    move-object v2, v1

    .line 288
    move-object/from16 v1, p2

    .line 289
    .line 290
    invoke-virtual {v0, v1, v2}, Lpb5;->i(Lbu4;Lvc5;)V

    .line 291
    .line 292
    .line 293
    return-void

    .line 294
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lpb5;->c()La25;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    iget-object v0, v0, La25;->m:Lx15;

    .line 299
    .line 300
    const-string v1, "No app data available; dropping event"

    .line 301
    .line 302
    invoke-virtual {v0, v2, v1}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    return-void
.end method

.method public final h0()Lq25;
    .locals 0

    .line 1
    iget-object p0, p0, Lpb5;->d:Lq25;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "Network broadcast receiver not created"

    .line 7
    .line 8
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0
.end method

.method public final i(Lbu4;Lvc5;)V
    .locals 10

    .line 1
    iget-object v1, p2, Lvc5;->n:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lak2;->a(Lbu4;)Lak2;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object v0, p1, Lak2;->f:Ljava/lang/Object;

    .line 11
    .line 12
    move-object v2, v0

    .line 13
    check-cast v2, Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-virtual {p0}, Lpb5;->k0()Lac5;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iget-object v0, p0, Lpb5;->c:Lat4;

    .line 20
    .line 21
    invoke-static {v0}, Lpb5;->T(Lab5;)V

    .line 22
    .line 23
    .line 24
    iget-object v4, v0, Lib0;->a:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v4, Lr45;

    .line 27
    .line 28
    invoke-virtual {v0}, Lib0;->v()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lab5;->w()V

    .line 32
    .line 33
    .line 34
    const/4 v5, 0x0

    .line 35
    :try_start_0
    invoke-virtual {v0}, Lat4;->m0()Landroid/database/sqlite/SQLiteDatabase;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    const-string v7, "select parameters from default_event_params where app_id=?"

    .line 40
    .line 41
    filled-new-array {v1}, [Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    invoke-virtual {v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 46
    .line 47
    .line 48
    move-result-object v6
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 49
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    if-nez v7, :cond_0

    .line 54
    .line 55
    iget-object v0, v4, Lr45;->f:La25;

    .line 56
    .line 57
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, v0, La25;->n:Lx15;

    .line 61
    .line 62
    const-string v7, "Default event parameters not found"

    .line 63
    .line 64
    invoke-virtual {v0, v7}, Lx15;->a(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :catchall_0
    move-exception v0

    .line 69
    move-object p0, v0

    .line 70
    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    goto :goto_1

    .line 73
    :cond_0
    const/4 v7, 0x0

    .line 74
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getBlob(I)[B

    .line 75
    .line 76
    .line 77
    move-result-object v7
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :try_start_2
    invoke-static {}, Lu35;->J()Ls35;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    invoke-static {v8, v7}, Lub5;->g0(Lpn4;[B)Lpn4;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    check-cast v7, Ls35;

    .line 87
    .line 88
    invoke-virtual {v7}, Lpn4;->d()Lrn4;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    check-cast v7, Lu35;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    .line 94
    :try_start_3
    iget-object v0, v0, Lta5;->b:Lpb5;

    .line 95
    .line 96
    invoke-virtual {v0}, Lpb5;->j0()Lub5;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v7}, Lu35;->v()Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-static {v0}, Lub5;->E(Ljava/util/List;)Landroid/os/Bundle;

    .line 104
    .line 105
    .line 106
    move-result-object v0
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 107
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 108
    .line 109
    .line 110
    goto :goto_3

    .line 111
    :catch_1
    move-exception v0

    .line 112
    :try_start_4
    iget-object v7, v4, Lr45;->f:La25;

    .line 113
    .line 114
    invoke-static {v7}, Lr45;->l(Lq55;)V

    .line 115
    .line 116
    .line 117
    iget-object v7, v7, La25;->f:Lx15;

    .line 118
    .line 119
    const-string v8, "Failed to retrieve default event parameters. appId"

    .line 120
    .line 121
    invoke-static {v1}, La25;->D(Ljava/lang/String;)Ly15;

    .line 122
    .line 123
    .line 124
    move-result-object v9

    .line 125
    invoke-virtual {v7, v9, v0, v8}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :goto_0
    move-object v5, v6

    .line 130
    goto/16 :goto_5

    .line 131
    .line 132
    :catchall_1
    move-exception v0

    .line 133
    move-object p0, v0

    .line 134
    goto/16 :goto_5

    .line 135
    .line 136
    :catch_2
    move-exception v0

    .line 137
    move-object v6, v5

    .line 138
    :goto_1
    :try_start_5
    iget-object v4, v4, Lr45;->f:La25;

    .line 139
    .line 140
    invoke-static {v4}, Lr45;->l(Lq55;)V

    .line 141
    .line 142
    .line 143
    iget-object v4, v4, La25;->f:Lx15;

    .line 144
    .line 145
    const-string v7, "Error selecting default event parameters"

    .line 146
    .line 147
    invoke-virtual {v4, v0, v7}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 148
    .line 149
    .line 150
    :goto_2
    if-eqz v6, :cond_1

    .line 151
    .line 152
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 153
    .line 154
    .line 155
    :cond_1
    move-object v0, v5

    .line 156
    :goto_3
    invoke-virtual {v3, v2, v0}, Lac5;->I(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Lpb5;->k0()Lac5;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {p0}, Lpb5;->e0()Lds4;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    sget-object v3, Le05;->X:Ld05;

    .line 171
    .line 172
    const/16 v4, 0x64

    .line 173
    .line 174
    invoke-virtual {v2, v1, v3}, Lds4;->E(Ljava/lang/String;Ld05;)I

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    const/16 v2, 0x19

    .line 183
    .line 184
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    invoke-virtual {v0, p1, v1}, Lac5;->G(Lak2;I)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1}, Lak2;->b()Lbu4;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-virtual {p0}, Lpb5;->e0()Lds4;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    sget-object v1, Le05;->Z0:Ld05;

    .line 200
    .line 201
    invoke-virtual {v0, v5, v1}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-eqz v0, :cond_2

    .line 206
    .line 207
    goto :goto_4

    .line 208
    :cond_2
    iget-object v0, p1, Lbu4;->n:Ljava/lang/String;

    .line 209
    .line 210
    const-string v1, "_cmp"

    .line 211
    .line 212
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    if-eqz v0, :cond_3

    .line 217
    .line 218
    iget-object v0, p1, Lbu4;->o:Lzt4;

    .line 219
    .line 220
    iget-object v1, v0, Lzt4;->n:Landroid/os/Bundle;

    .line 221
    .line 222
    const-string v2, "_cis"

    .line 223
    .line 224
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    const-string v2, "referrer API v2"

    .line 229
    .line 230
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    if-eqz v1, :cond_3

    .line 235
    .line 236
    const-string v1, "gclid"

    .line 237
    .line 238
    iget-object v0, v0, Lzt4;->n:Landroid/os/Bundle;

    .line 239
    .line 240
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    if-nez v0, :cond_3

    .line 249
    .line 250
    iget-wide v3, p1, Lbu4;->q:J

    .line 251
    .line 252
    new-instance v2, Lvb5;

    .line 253
    .line 254
    const-string v7, "auto"

    .line 255
    .line 256
    const-string v6, "_lgclid"

    .line 257
    .line 258
    invoke-direct/range {v2 .. v7}, Lvb5;-><init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {p0, v2, p2}, Lpb5;->W(Lvb5;Lvc5;)V

    .line 262
    .line 263
    .line 264
    :cond_3
    :goto_4
    invoke-virtual {p0, p1, p2}, Lpb5;->j(Lbu4;Lvc5;)V

    .line 265
    .line 266
    .line 267
    return-void

    .line 268
    :goto_5
    if-eqz v5, :cond_4

    .line 269
    .line 270
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 271
    .line 272
    .line 273
    :cond_4
    throw p0
.end method

.method public final i0()Lgn4;
    .locals 0

    .line 1
    iget-object p0, p0, Lpb5;->f:Lgn4;

    .line 2
    .line 3
    invoke-static {p0}, Lpb5;->T(Lab5;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final j(Lbu4;Lvc5;)V
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "_s"

    .line 8
    .line 9
    const-string v4, "_sid"

    .line 10
    .line 11
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    iget-object v5, v2, Lvc5;->n:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lpb5;->d()Lj45;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    invoke-virtual {v6}, Lj45;->v()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lpb5;->l0()V

    .line 27
    .line 28
    .line 29
    iget-wide v9, v0, Lbu4;->q:J

    .line 30
    .line 31
    iget-wide v11, v0, Lbu4;->r:J

    .line 32
    .line 33
    invoke-static {v0}, Lak2;->a(Lbu4;)Lak2;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v1}, Lpb5;->d()Lj45;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    invoke-virtual {v6}, Lj45;->v()V

    .line 42
    .line 43
    .line 44
    iget-object v6, v1, Lpb5;->F:Lw75;

    .line 45
    .line 46
    if-eqz v6, :cond_0

    .line 47
    .line 48
    iget-object v8, v1, Lpb5;->G:Ljava/lang/String;

    .line 49
    .line 50
    if-eqz v8, :cond_0

    .line 51
    .line 52
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    if-nez v8, :cond_1

    .line 57
    .line 58
    :cond_0
    const/4 v6, 0x0

    .line 59
    :cond_1
    iget-object v8, v0, Lak2;->f:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v8, Landroid/os/Bundle;

    .line 62
    .line 63
    const/4 v14, 0x0

    .line 64
    invoke-static {v6, v8, v14}, Lac5;->q0(Lw75;Landroid/os/Bundle;Z)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Lak2;->b()Lbu4;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v1}, Lpb5;->j0()Lub5;

    .line 72
    .line 73
    .line 74
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    iget-object v6, v2, Lvc5;->o:Ljava/lang/String;

    .line 81
    .line 82
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    if-eqz v6, :cond_2

    .line 87
    .line 88
    return-void

    .line 89
    :cond_2
    iget-boolean v6, v2, Lvc5;->u:Z

    .line 90
    .line 91
    if-nez v6, :cond_3

    .line 92
    .line 93
    invoke-virtual {v1, v2}, Lpb5;->c0(Lvc5;)Lm25;

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_3
    iget-object v6, v2, Lvc5;->E:Ljava/util/List;

    .line 98
    .line 99
    if-eqz v6, :cond_5

    .line 100
    .line 101
    iget-object v8, v0, Lbu4;->n:Ljava/lang/String;

    .line 102
    .line 103
    invoke-interface {v6, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    if-eqz v6, :cond_4

    .line 108
    .line 109
    iget-object v6, v0, Lbu4;->o:Lzt4;

    .line 110
    .line 111
    invoke-virtual {v6}, Lzt4;->j0()Landroid/os/Bundle;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    const-string v13, "ga_safelisted"

    .line 116
    .line 117
    const-wide/16 v14, 0x1

    .line 118
    .line 119
    invoke-virtual {v6, v13, v14, v15}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 120
    .line 121
    .line 122
    new-instance v15, Lbu4;

    .line 123
    .line 124
    new-instance v13, Lzt4;

    .line 125
    .line 126
    invoke-direct {v13, v6}, Lzt4;-><init>(Landroid/os/Bundle;)V

    .line 127
    .line 128
    .line 129
    iget-object v6, v0, Lbu4;->p:Ljava/lang/String;

    .line 130
    .line 131
    move-object/from16 v16, v8

    .line 132
    .line 133
    iget-wide v7, v0, Lbu4;->q:J

    .line 134
    .line 135
    move-object/from16 v17, v15

    .line 136
    .line 137
    iget-wide v14, v0, Lbu4;->r:J

    .line 138
    .line 139
    move-object/from16 v18, v6

    .line 140
    .line 141
    move-wide/from16 v19, v7

    .line 142
    .line 143
    move-wide/from16 v21, v14

    .line 144
    .line 145
    move-object/from16 v15, v17

    .line 146
    .line 147
    move-object/from16 v17, v13

    .line 148
    .line 149
    invoke-direct/range {v15 .. v22}, Lbu4;-><init>(Ljava/lang/String;Lzt4;Ljava/lang/String;JJ)V

    .line 150
    .line 151
    .line 152
    move-object v0, v15

    .line 153
    goto :goto_0

    .line 154
    :cond_4
    move-object v6, v8

    .line 155
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    iget-object v1, v1, La25;->m:Lx15;

    .line 160
    .line 161
    iget-object v0, v0, Lbu4;->p:Ljava/lang/String;

    .line 162
    .line 163
    const-string v2, "Dropping non-safelisted event. appId, event name, origin"

    .line 164
    .line 165
    invoke-virtual {v1, v2, v5, v6, v0}, Lx15;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :cond_5
    :goto_0
    iget-object v6, v1, Lpb5;->c:Lat4;

    .line 170
    .line 171
    invoke-static {v6}, Lpb5;->T(Lab5;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v6}, Lat4;->j0()V

    .line 175
    .line 176
    .line 177
    :try_start_0
    iget-object v6, v0, Lbu4;->n:Ljava/lang/String;

    .line 178
    .line 179
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v7

    .line 183
    const-wide/16 v13, 0x0

    .line 184
    .line 185
    if-eqz v7, :cond_8

    .line 186
    .line 187
    iget-object v7, v1, Lpb5;->c:Lat4;

    .line 188
    .line 189
    invoke-static {v7}, Lpb5;->T(Lab5;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v7, v5, v3}, Lat4;->K(Ljava/lang/String;Ljava/lang/String;)Z

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    if-nez v3, :cond_8

    .line 197
    .line 198
    iget-object v3, v0, Lbu4;->o:Lzt4;

    .line 199
    .line 200
    iget-object v3, v3, Lzt4;->n:Landroid/os/Bundle;

    .line 201
    .line 202
    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 203
    .line 204
    .line 205
    move-result-wide v7

    .line 206
    cmp-long v3, v7, v13

    .line 207
    .line 208
    if-eqz v3, :cond_8

    .line 209
    .line 210
    iget-object v3, v1, Lpb5;->c:Lat4;

    .line 211
    .line 212
    invoke-static {v3}, Lpb5;->T(Lab5;)V

    .line 213
    .line 214
    .line 215
    const-string v7, "_f"

    .line 216
    .line 217
    invoke-virtual {v3, v5, v7}, Lat4;->K(Ljava/lang/String;Ljava/lang/String;)Z

    .line 218
    .line 219
    .line 220
    move-result v3

    .line 221
    if-nez v3, :cond_7

    .line 222
    .line 223
    iget-object v3, v1, Lpb5;->c:Lat4;

    .line 224
    .line 225
    invoke-static {v3}, Lpb5;->T(Lab5;)V

    .line 226
    .line 227
    .line 228
    const-string v7, "_v"

    .line 229
    .line 230
    invoke-virtual {v3, v5, v7}, Lat4;->K(Ljava/lang/String;Ljava/lang/String;)Z

    .line 231
    .line 232
    .line 233
    move-result v3

    .line 234
    if-eqz v3, :cond_6

    .line 235
    .line 236
    goto :goto_1

    .line 237
    :cond_6
    iget-object v3, v1, Lpb5;->c:Lat4;

    .line 238
    .line 239
    invoke-static {v3}, Lpb5;->T(Lab5;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1}, Lpb5;->f()Lcom/google/android/gms/common/util/Clock;

    .line 243
    .line 244
    .line 245
    move-result-object v7

    .line 246
    invoke-interface {v7}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 247
    .line 248
    .line 249
    move-result-wide v7

    .line 250
    const-wide/16 v15, -0x3a98

    .line 251
    .line 252
    add-long/2addr v7, v15

    .line 253
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 254
    .line 255
    .line 256
    move-result-object v7

    .line 257
    invoke-virtual {v1, v5, v0}, Lpb5;->k(Ljava/lang/String;Lbu4;)Landroid/os/Bundle;

    .line 258
    .line 259
    .line 260
    move-result-object v8

    .line 261
    invoke-virtual {v3, v5, v7, v4, v8}, Lat4;->O(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 262
    .line 263
    .line 264
    goto :goto_2

    .line 265
    :catchall_0
    move-exception v0

    .line 266
    goto/16 :goto_c

    .line 267
    .line 268
    :cond_7
    :goto_1
    iget-object v3, v1, Lpb5;->c:Lat4;

    .line 269
    .line 270
    invoke-static {v3}, Lpb5;->T(Lab5;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v1, v5, v0}, Lpb5;->k(Ljava/lang/String;Lbu4;)Landroid/os/Bundle;

    .line 274
    .line 275
    .line 276
    move-result-object v7

    .line 277
    const/4 v8, 0x0

    .line 278
    invoke-virtual {v3, v5, v8, v4, v7}, Lat4;->O(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 279
    .line 280
    .line 281
    :cond_8
    :goto_2
    iget-object v3, v1, Lpb5;->c:Lat4;

    .line 282
    .line 283
    invoke-static {v3}, Lpb5;->T(Lab5;)V

    .line 284
    .line 285
    .line 286
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v3}, Lib0;->v()V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v3}, Lab5;->w()V

    .line 293
    .line 294
    .line 295
    cmp-long v4, v9, v13

    .line 296
    .line 297
    if-gez v4, :cond_9

    .line 298
    .line 299
    iget-object v3, v3, Lib0;->a:Ljava/lang/Object;

    .line 300
    .line 301
    check-cast v3, Lr45;

    .line 302
    .line 303
    iget-object v3, v3, Lr45;->f:La25;

    .line 304
    .line 305
    invoke-static {v3}, Lr45;->l(Lq55;)V

    .line 306
    .line 307
    .line 308
    iget-object v3, v3, La25;->i:Lx15;

    .line 309
    .line 310
    const-string v7, "Invalid time querying timed out conditional properties"

    .line 311
    .line 312
    invoke-static {v5}, La25;->D(Ljava/lang/String;)Ly15;

    .line 313
    .line 314
    .line 315
    move-result-object v8

    .line 316
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 317
    .line 318
    .line 319
    move-result-object v13

    .line 320
    invoke-virtual {v3, v8, v13, v7}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 324
    .line 325
    goto :goto_3

    .line 326
    :cond_9
    const-string v7, "active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout"

    .line 327
    .line 328
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v8

    .line 332
    filled-new-array {v5, v8}, [Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v8

    .line 336
    invoke-virtual {v3, v7, v8}, Lat4;->y0(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 337
    .line 338
    .line 339
    move-result-object v3

    .line 340
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 341
    .line 342
    .line 343
    move-result-object v3

    .line 344
    :cond_a
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 345
    .line 346
    .line 347
    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    iget-object v14, v1, Lpb5;->l:Lr45;

    .line 349
    .line 350
    if-eqz v7, :cond_c

    .line 351
    .line 352
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v7

    .line 356
    move-object v13, v7

    .line 357
    check-cast v13, Lfq4;

    .line 358
    .line 359
    if-eqz v13, :cond_a

    .line 360
    .line 361
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 362
    .line 363
    .line 364
    move-result-object v7

    .line 365
    iget-object v7, v7, La25;->n:Lx15;

    .line 366
    .line 367
    const-string v8, "User property timed out"

    .line 368
    .line 369
    iget-object v15, v13, Lfq4;->n:Ljava/lang/String;

    .line 370
    .line 371
    iget-object v14, v14, Lr45;->j:Lp15;

    .line 372
    .line 373
    move-object/from16 v16, v3

    .line 374
    .line 375
    iget-object v3, v13, Lfq4;->p:Lvb5;

    .line 376
    .line 377
    iget-object v3, v3, Lvb5;->o:Ljava/lang/String;

    .line 378
    .line 379
    invoke-virtual {v14, v3}, Lp15;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v3

    .line 383
    iget-object v14, v13, Lfq4;->p:Lvb5;

    .line 384
    .line 385
    invoke-virtual {v14}, Lvb5;->Y()Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v14

    .line 389
    invoke-virtual {v7, v8, v15, v3, v14}, Lx15;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 390
    .line 391
    .line 392
    iget-object v8, v13, Lfq4;->t:Lbu4;

    .line 393
    .line 394
    if-eqz v8, :cond_b

    .line 395
    .line 396
    new-instance v7, Lbu4;

    .line 397
    .line 398
    invoke-direct/range {v7 .. v12}, Lbu4;-><init>(Lbu4;JJ)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v1, v7, v2}, Lpb5;->l(Lbu4;Lvc5;)V

    .line 402
    .line 403
    .line 404
    :cond_b
    iget-object v3, v1, Lpb5;->c:Lat4;

    .line 405
    .line 406
    invoke-static {v3}, Lpb5;->T(Lab5;)V

    .line 407
    .line 408
    .line 409
    iget-object v7, v13, Lfq4;->p:Lvb5;

    .line 410
    .line 411
    iget-object v7, v7, Lvb5;->o:Ljava/lang/String;

    .line 412
    .line 413
    invoke-virtual {v3, v5, v7}, Lat4;->w0(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    move-object/from16 v3, v16

    .line 417
    .line 418
    goto :goto_4

    .line 419
    :cond_c
    iget-object v3, v1, Lpb5;->c:Lat4;

    .line 420
    .line 421
    invoke-static {v3}, Lpb5;->T(Lab5;)V

    .line 422
    .line 423
    .line 424
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    invoke-virtual {v3}, Lib0;->v()V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v3}, Lab5;->w()V

    .line 431
    .line 432
    .line 433
    if-gez v4, :cond_d

    .line 434
    .line 435
    iget-object v3, v3, Lib0;->a:Ljava/lang/Object;

    .line 436
    .line 437
    check-cast v3, Lr45;

    .line 438
    .line 439
    iget-object v3, v3, Lr45;->f:La25;

    .line 440
    .line 441
    invoke-static {v3}, Lr45;->l(Lq55;)V

    .line 442
    .line 443
    .line 444
    iget-object v3, v3, La25;->i:Lx15;

    .line 445
    .line 446
    const-string v7, "Invalid time querying expired conditional properties"

    .line 447
    .line 448
    invoke-static {v5}, La25;->D(Ljava/lang/String;)Ly15;

    .line 449
    .line 450
    .line 451
    move-result-object v8

    .line 452
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 453
    .line 454
    .line 455
    move-result-object v13

    .line 456
    invoke-virtual {v3, v8, v13, v7}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 460
    .line 461
    goto :goto_5

    .line 462
    :cond_d
    const-string v7, "active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live"

    .line 463
    .line 464
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v8

    .line 468
    filled-new-array {v5, v8}, [Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v8

    .line 472
    invoke-virtual {v3, v7, v8}, Lat4;->y0(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 473
    .line 474
    .line 475
    move-result-object v3

    .line 476
    :goto_5
    new-instance v13, Ljava/util/ArrayList;

    .line 477
    .line 478
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 479
    .line 480
    .line 481
    move-result v7

    .line 482
    invoke-direct {v13, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 483
    .line 484
    .line 485
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 486
    .line 487
    .line 488
    move-result-object v3

    .line 489
    :cond_e
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 490
    .line 491
    .line 492
    move-result v7

    .line 493
    if-eqz v7, :cond_10

    .line 494
    .line 495
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object v7

    .line 499
    check-cast v7, Lfq4;

    .line 500
    .line 501
    if-eqz v7, :cond_e

    .line 502
    .line 503
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 504
    .line 505
    .line 506
    move-result-object v8

    .line 507
    iget-object v8, v8, La25;->n:Lx15;

    .line 508
    .line 509
    const-string v15, "User property expired"

    .line 510
    .line 511
    move-object/from16 v16, v3

    .line 512
    .line 513
    iget-object v3, v7, Lfq4;->n:Ljava/lang/String;

    .line 514
    .line 515
    move/from16 v17, v4

    .line 516
    .line 517
    iget-object v4, v14, Lr45;->j:Lp15;

    .line 518
    .line 519
    move-wide/from16 v18, v9

    .line 520
    .line 521
    iget-object v9, v7, Lfq4;->p:Lvb5;

    .line 522
    .line 523
    iget-object v9, v9, Lvb5;->o:Ljava/lang/String;

    .line 524
    .line 525
    invoke-virtual {v4, v9}, Lp15;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v4

    .line 529
    iget-object v9, v7, Lfq4;->p:Lvb5;

    .line 530
    .line 531
    invoke-virtual {v9}, Lvb5;->Y()Ljava/lang/Object;

    .line 532
    .line 533
    .line 534
    move-result-object v9

    .line 535
    invoke-virtual {v8, v15, v3, v4, v9}, Lx15;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 536
    .line 537
    .line 538
    iget-object v3, v1, Lpb5;->c:Lat4;

    .line 539
    .line 540
    invoke-static {v3}, Lpb5;->T(Lab5;)V

    .line 541
    .line 542
    .line 543
    iget-object v4, v7, Lfq4;->p:Lvb5;

    .line 544
    .line 545
    iget-object v4, v4, Lvb5;->o:Ljava/lang/String;

    .line 546
    .line 547
    invoke-virtual {v3, v5, v4}, Lat4;->p0(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    iget-object v3, v7, Lfq4;->x:Lbu4;

    .line 551
    .line 552
    if-eqz v3, :cond_f

    .line 553
    .line 554
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    .line 556
    .line 557
    :cond_f
    iget-object v3, v1, Lpb5;->c:Lat4;

    .line 558
    .line 559
    invoke-static {v3}, Lpb5;->T(Lab5;)V

    .line 560
    .line 561
    .line 562
    iget-object v4, v7, Lfq4;->p:Lvb5;

    .line 563
    .line 564
    iget-object v4, v4, Lvb5;->o:Ljava/lang/String;

    .line 565
    .line 566
    invoke-virtual {v3, v5, v4}, Lat4;->w0(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    .line 568
    .line 569
    move-object/from16 v3, v16

    .line 570
    .line 571
    move/from16 v4, v17

    .line 572
    .line 573
    move-wide/from16 v9, v18

    .line 574
    .line 575
    goto :goto_6

    .line 576
    :cond_10
    move/from16 v17, v4

    .line 577
    .line 578
    move-wide/from16 v18, v9

    .line 579
    .line 580
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 581
    .line 582
    .line 583
    move-result v3

    .line 584
    const/4 v4, 0x0

    .line 585
    :goto_7
    if-ge v4, v3, :cond_11

    .line 586
    .line 587
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 588
    .line 589
    .line 590
    move-result-object v7

    .line 591
    add-int/lit8 v4, v4, 0x1

    .line 592
    .line 593
    move-object v8, v7

    .line 594
    check-cast v8, Lbu4;

    .line 595
    .line 596
    new-instance v7, Lbu4;

    .line 597
    .line 598
    move-wide/from16 v9, v18

    .line 599
    .line 600
    invoke-direct/range {v7 .. v12}, Lbu4;-><init>(Lbu4;JJ)V

    .line 601
    .line 602
    .line 603
    move-wide v15, v11

    .line 604
    invoke-virtual {v1, v7, v2}, Lpb5;->l(Lbu4;Lvc5;)V

    .line 605
    .line 606
    .line 607
    move-wide/from16 v18, v9

    .line 608
    .line 609
    move-wide v11, v15

    .line 610
    goto :goto_7

    .line 611
    :cond_11
    move-wide v15, v11

    .line 612
    move-wide/from16 v9, v18

    .line 613
    .line 614
    iget-object v3, v1, Lpb5;->c:Lat4;

    .line 615
    .line 616
    invoke-static {v3}, Lpb5;->T(Lab5;)V

    .line 617
    .line 618
    .line 619
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 623
    .line 624
    .line 625
    invoke-virtual {v3}, Lib0;->v()V

    .line 626
    .line 627
    .line 628
    invoke-virtual {v3}, Lab5;->w()V

    .line 629
    .line 630
    .line 631
    if-gez v17, :cond_12

    .line 632
    .line 633
    iget-object v3, v3, Lib0;->a:Ljava/lang/Object;

    .line 634
    .line 635
    check-cast v3, Lr45;

    .line 636
    .line 637
    iget-object v4, v3, Lr45;->f:La25;

    .line 638
    .line 639
    invoke-static {v4}, Lr45;->l(Lq55;)V

    .line 640
    .line 641
    .line 642
    iget-object v4, v4, La25;->i:Lx15;

    .line 643
    .line 644
    const-string v7, "Invalid time querying triggered conditional properties"

    .line 645
    .line 646
    invoke-static {v5}, La25;->D(Ljava/lang/String;)Ly15;

    .line 647
    .line 648
    .line 649
    move-result-object v5

    .line 650
    iget-object v3, v3, Lr45;->j:Lp15;

    .line 651
    .line 652
    invoke-virtual {v3, v6}, Lp15;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 653
    .line 654
    .line 655
    move-result-object v3

    .line 656
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 657
    .line 658
    .line 659
    move-result-object v6

    .line 660
    invoke-virtual {v4, v7, v5, v3, v6}, Lx15;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 661
    .line 662
    .line 663
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 664
    .line 665
    goto :goto_8

    .line 666
    :cond_12
    const-string v4, "active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout"

    .line 667
    .line 668
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object v7

    .line 672
    filled-new-array {v5, v6, v7}, [Ljava/lang/String;

    .line 673
    .line 674
    .line 675
    move-result-object v5

    .line 676
    invoke-virtual {v3, v4, v5}, Lat4;->y0(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 677
    .line 678
    .line 679
    move-result-object v3

    .line 680
    :goto_8
    new-instance v4, Ljava/util/ArrayList;

    .line 681
    .line 682
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 683
    .line 684
    .line 685
    move-result v5

    .line 686
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 687
    .line 688
    .line 689
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 690
    .line 691
    .line 692
    move-result-object v3

    .line 693
    :cond_13
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 694
    .line 695
    .line 696
    move-result v5

    .line 697
    if-eqz v5, :cond_16

    .line 698
    .line 699
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 700
    .line 701
    .line 702
    move-result-object v5

    .line 703
    check-cast v5, Lfq4;

    .line 704
    .line 705
    if-eqz v5, :cond_13

    .line 706
    .line 707
    iget-object v6, v5, Lfq4;->p:Lvb5;

    .line 708
    .line 709
    new-instance v7, Lxb5;

    .line 710
    .line 711
    iget-object v8, v5, Lfq4;->n:Ljava/lang/String;

    .line 712
    .line 713
    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    .line 715
    .line 716
    move-result-object v8

    .line 717
    check-cast v8, Ljava/lang/String;

    .line 718
    .line 719
    move-wide/from16 v18, v9

    .line 720
    .line 721
    iget-object v9, v5, Lfq4;->o:Ljava/lang/String;

    .line 722
    .line 723
    iget-object v10, v6, Lvb5;->o:Ljava/lang/String;

    .line 724
    .line 725
    invoke-virtual {v6}, Lvb5;->Y()Ljava/lang/Object;

    .line 726
    .line 727
    .line 728
    move-result-object v6

    .line 729
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    .line 731
    .line 732
    move-result-object v13

    .line 733
    move-wide/from16 v11, v18

    .line 734
    .line 735
    invoke-direct/range {v7 .. v13}, Lxb5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 736
    .line 737
    .line 738
    move-wide v9, v11

    .line 739
    iget-object v6, v7, Lxb5;->e:Ljava/lang/Object;

    .line 740
    .line 741
    iget-object v8, v7, Lxb5;->c:Ljava/lang/String;

    .line 742
    .line 743
    iget-object v11, v1, Lpb5;->c:Lat4;

    .line 744
    .line 745
    invoke-static {v11}, Lpb5;->T(Lab5;)V

    .line 746
    .line 747
    .line 748
    invoke-virtual {v11, v7}, Lat4;->q0(Lxb5;)Z

    .line 749
    .line 750
    .line 751
    move-result v11

    .line 752
    if-eqz v11, :cond_14

    .line 753
    .line 754
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 755
    .line 756
    .line 757
    move-result-object v11

    .line 758
    iget-object v11, v11, La25;->n:Lx15;

    .line 759
    .line 760
    const-string v12, "User property triggered"

    .line 761
    .line 762
    iget-object v13, v5, Lfq4;->n:Ljava/lang/String;

    .line 763
    .line 764
    move-object/from16 v17, v3

    .line 765
    .line 766
    iget-object v3, v14, Lr45;->j:Lp15;

    .line 767
    .line 768
    invoke-virtual {v3, v8}, Lp15;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 769
    .line 770
    .line 771
    move-result-object v3

    .line 772
    invoke-virtual {v11, v12, v13, v3, v6}, Lx15;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 773
    .line 774
    .line 775
    goto :goto_a

    .line 776
    :cond_14
    move-object/from16 v17, v3

    .line 777
    .line 778
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 779
    .line 780
    .line 781
    move-result-object v3

    .line 782
    iget-object v3, v3, La25;->f:Lx15;

    .line 783
    .line 784
    const-string v11, "Too many active user properties, ignoring"

    .line 785
    .line 786
    iget-object v12, v5, Lfq4;->n:Ljava/lang/String;

    .line 787
    .line 788
    invoke-static {v12}, La25;->D(Ljava/lang/String;)Ly15;

    .line 789
    .line 790
    .line 791
    move-result-object v12

    .line 792
    iget-object v13, v14, Lr45;->j:Lp15;

    .line 793
    .line 794
    invoke-virtual {v13, v8}, Lp15;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 795
    .line 796
    .line 797
    move-result-object v8

    .line 798
    invoke-virtual {v3, v11, v12, v8, v6}, Lx15;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 799
    .line 800
    .line 801
    :goto_a
    iget-object v3, v5, Lfq4;->v:Lbu4;

    .line 802
    .line 803
    if-eqz v3, :cond_15

    .line 804
    .line 805
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    .line 807
    .line 808
    :cond_15
    new-instance v3, Lvb5;

    .line 809
    .line 810
    invoke-direct {v3, v7}, Lvb5;-><init>(Lxb5;)V

    .line 811
    .line 812
    .line 813
    iput-object v3, v5, Lfq4;->p:Lvb5;

    .line 814
    .line 815
    const/4 v3, 0x1

    .line 816
    iput-boolean v3, v5, Lfq4;->r:Z

    .line 817
    .line 818
    iget-object v3, v1, Lpb5;->c:Lat4;

    .line 819
    .line 820
    invoke-static {v3}, Lpb5;->T(Lab5;)V

    .line 821
    .line 822
    .line 823
    invoke-virtual {v3, v5}, Lat4;->u0(Lfq4;)Z

    .line 824
    .line 825
    .line 826
    move-object/from16 v3, v17

    .line 827
    .line 828
    goto/16 :goto_9

    .line 829
    .line 830
    :cond_16
    invoke-virtual {v1, v0, v2}, Lpb5;->l(Lbu4;Lvc5;)V

    .line 831
    .line 832
    .line 833
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 834
    .line 835
    .line 836
    move-result v0

    .line 837
    const/4 v14, 0x0

    .line 838
    :goto_b
    if-ge v14, v0, :cond_17

    .line 839
    .line 840
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 841
    .line 842
    .line 843
    move-result-object v3

    .line 844
    add-int/lit8 v14, v14, 0x1

    .line 845
    .line 846
    move-object v8, v3

    .line 847
    check-cast v8, Lbu4;

    .line 848
    .line 849
    new-instance v7, Lbu4;

    .line 850
    .line 851
    move-wide v11, v15

    .line 852
    invoke-direct/range {v7 .. v12}, Lbu4;-><init>(Lbu4;JJ)V

    .line 853
    .line 854
    .line 855
    invoke-virtual {v1, v7, v2}, Lpb5;->l(Lbu4;Lvc5;)V

    .line 856
    .line 857
    .line 858
    move-wide v15, v11

    .line 859
    goto :goto_b

    .line 860
    :cond_17
    iget-object v0, v1, Lpb5;->c:Lat4;

    .line 861
    .line 862
    invoke-static {v0}, Lpb5;->T(Lab5;)V

    .line 863
    .line 864
    .line 865
    invoke-virtual {v0}, Lat4;->k0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 866
    .line 867
    .line 868
    iget-object v0, v1, Lpb5;->c:Lat4;

    .line 869
    .line 870
    invoke-static {v0}, Lpb5;->T(Lab5;)V

    .line 871
    .line 872
    .line 873
    invoke-virtual {v0}, Lat4;->l0()V

    .line 874
    .line 875
    .line 876
    return-void

    .line 877
    :goto_c
    iget-object v1, v1, Lpb5;->c:Lat4;

    .line 878
    .line 879
    invoke-static {v1}, Lpb5;->T(Lab5;)V

    .line 880
    .line 881
    .line 882
    invoke-virtual {v1}, Lat4;->l0()V

    .line 883
    .line 884
    .line 885
    throw v0
.end method

.method public final j0()Lub5;
    .locals 0

    .line 1
    iget-object p0, p0, Lpb5;->g:Lub5;

    .line 2
    .line 3
    invoke-static {p0}, Lpb5;->T(Lab5;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final k(Ljava/lang/String;Lbu4;)Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p2, p2, Lbu4;->o:Lzt4;

    .line 7
    .line 8
    iget-object p2, p2, Lzt4;->n:Landroid/os/Bundle;

    .line 9
    .line 10
    const-string v1, "_sid"

    .line 11
    .line 12
    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lpb5;->c:Lat4;

    .line 20
    .line 21
    invoke-static {p0}, Lpb5;->T(Lab5;)V

    .line 22
    .line 23
    .line 24
    const-string p2, "_sno"

    .line 25
    .line 26
    invoke-virtual {p0, p1, p2}, Lat4;->r0(Ljava/lang/String;Ljava/lang/String;)Lxb5;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    if-eqz p0, :cond_0

    .line 31
    .line 32
    iget-object p0, p0, Lxb5;->e:Ljava/lang/Object;

    .line 33
    .line 34
    instance-of p1, p0, Ljava/lang/Long;

    .line 35
    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    check-cast p0, Ljava/lang/Long;

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 41
    .line 42
    .line 43
    move-result-wide p0

    .line 44
    invoke-virtual {v0, p2, p0, p1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-object v0
.end method

.method public final k0()Lac5;
    .locals 0

    .line 1
    iget-object p0, p0, Lpb5;->l:Lr45;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lr45;

    .line 8
    .line 9
    iget-object p0, p0, Lr45;->i:Lac5;

    .line 10
    .line 11
    invoke-static {p0}, Lr45;->j(Lib0;)V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public final l(Lbu4;Lvc5;)V
    .locals 41

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    const-string v3, "metadata_fingerprint"

    .line 6
    .line 7
    const-string v4, "app_id"

    .line 8
    .line 9
    const-string v5, "_fx"

    .line 10
    .line 11
    const-string v6, "events"

    .line 12
    .line 13
    const-string v7, "raw_events"

    .line 14
    .line 15
    const-string v8, "_sno"

    .line 16
    .line 17
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    iget-object v10, v2, Lvc5;->n:Ljava/lang/String;

    .line 21
    .line 22
    iget-boolean v9, v2, Lvc5;->u:Z

    .line 23
    .line 24
    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 28
    .line 29
    .line 30
    move-result-wide v26

    .line 31
    invoke-virtual {v1}, Lpb5;->d()Lj45;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lj45;->v()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Lpb5;->l0()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Lpb5;->j0()Lub5;

    .line 42
    .line 43
    .line 44
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    iget-object v11, v2, Lvc5;->o:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_0

    .line 57
    .line 58
    goto/16 :goto_1

    .line 59
    .line 60
    :cond_0
    if-nez v9, :cond_1

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Lpb5;->c0(Lvc5;)Lm25;

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_1
    invoke-virtual {v1}, Lpb5;->f0()Lw35;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    move-object/from16 v12, p1

    .line 71
    .line 72
    iget-object v13, v12, Lbu4;->n:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v0, v10, v13}, Lw35;->K(Ljava/lang/String;Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    const-string v14, "_err"

    .line 79
    .line 80
    iget-object v15, v1, Lpb5;->l:Lr45;

    .line 81
    .line 82
    move/from16 v16, v9

    .line 83
    .line 84
    iget-object v9, v1, Lpb5;->J:Llb5;

    .line 85
    .line 86
    move-object/from16 v28, v3

    .line 87
    .line 88
    const/4 v3, 0x0

    .line 89
    if-eqz v0, :cond_5

    .line 90
    .line 91
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v0}, La25;->A()Lx15;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-static {v10}, La25;->D(Ljava/lang/String;)Ly15;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v15}, Lr45;->m()Lp15;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-virtual {v4, v13}, Lp15;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    const-string v5, "Dropping blocked event. appId"

    .line 112
    .line 113
    invoke-virtual {v0, v2, v4, v5}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Lpb5;->f0()Lw35;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    const-string v2, "measurement.upload.blacklist_internal"

    .line 121
    .line 122
    invoke-virtual {v0, v10, v2}, Lw35;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    const-string v2, "1"

    .line 127
    .line 128
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-nez v0, :cond_3

    .line 133
    .line 134
    invoke-virtual {v1}, Lpb5;->f0()Lw35;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    const-string v4, "measurement.upload.blacklist_public"

    .line 139
    .line 140
    invoke-virtual {v0, v10, v4}, Lw35;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-eqz v0, :cond_2

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_2
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-nez v0, :cond_4

    .line 156
    .line 157
    invoke-virtual {v1}, Lpb5;->k0()Lac5;

    .line 158
    .line 159
    .line 160
    const-string v12, "_ev"

    .line 161
    .line 162
    const/4 v14, 0x0

    .line 163
    const/16 v11, 0xb

    .line 164
    .line 165
    invoke-static/range {v9 .. v14}, Lac5;->N(Lyb5;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :cond_3
    :goto_0
    invoke-virtual {v1}, Lpb5;->g0()Lat4;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v0, v10}, Lat4;->z0(Ljava/lang/String;)Lm25;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    if-eqz v0, :cond_4

    .line 178
    .line 179
    iget-object v2, v0, Lm25;->a:Lr45;

    .line 180
    .line 181
    iget-object v4, v2, Lr45;->g:Lj45;

    .line 182
    .line 183
    invoke-static {v4}, Lr45;->l(Lq55;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v4}, Lj45;->v()V

    .line 187
    .line 188
    .line 189
    iget-wide v4, v0, Lm25;->T:J

    .line 190
    .line 191
    iget-object v2, v2, Lr45;->g:Lj45;

    .line 192
    .line 193
    invoke-static {v2}, Lr45;->l(Lq55;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2}, Lj45;->v()V

    .line 197
    .line 198
    .line 199
    iget-wide v6, v0, Lm25;->S:J

    .line 200
    .line 201
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 202
    .line 203
    .line 204
    move-result-wide v4

    .line 205
    invoke-virtual {v1}, Lpb5;->f()Lcom/google/android/gms/common/util/Clock;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 210
    .line 211
    .line 212
    move-result-wide v6

    .line 213
    sub-long/2addr v6, v4

    .line 214
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    .line 215
    .line 216
    .line 217
    move-result-wide v4

    .line 218
    invoke-virtual {v1}, Lpb5;->e0()Lds4;

    .line 219
    .line 220
    .line 221
    sget-object v2, Le05;->N:Ld05;

    .line 222
    .line 223
    invoke-virtual {v2, v3}, Ld05;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    check-cast v2, Ljava/lang/Long;

    .line 228
    .line 229
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 230
    .line 231
    .line 232
    move-result-wide v2

    .line 233
    cmp-long v2, v4, v2

    .line 234
    .line 235
    if-lez v2, :cond_4

    .line 236
    .line 237
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    invoke-virtual {v2}, La25;->B()Lx15;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    const-string v3, "Fetching config for blocked app"

    .line 246
    .line 247
    invoke-virtual {v2, v3}, Lx15;->a(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v1, v0}, Lpb5;->A(Lm25;)V

    .line 251
    .line 252
    .line 253
    :cond_4
    :goto_1
    return-void

    .line 254
    :cond_5
    move-object/from16 v17, v9

    .line 255
    .line 256
    invoke-static {v12}, Lak2;->a(Lbu4;)Lak2;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-virtual {v1}, Lpb5;->k0()Lac5;

    .line 261
    .line 262
    .line 263
    move-result-object v9

    .line 264
    invoke-virtual {v1}, Lpb5;->e0()Lds4;

    .line 265
    .line 266
    .line 267
    move-result-object v12

    .line 268
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 269
    .line 270
    .line 271
    sget-object v13, Le05;->X:Ld05;

    .line 272
    .line 273
    invoke-virtual {v12, v10, v13}, Lds4;->E(Ljava/lang/String;Ld05;)I

    .line 274
    .line 275
    .line 276
    move-result v12

    .line 277
    const/16 v13, 0x64

    .line 278
    .line 279
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    .line 280
    .line 281
    .line 282
    move-result v12

    .line 283
    const/16 v13, 0x19

    .line 284
    .line 285
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    .line 286
    .line 287
    .line 288
    move-result v12

    .line 289
    invoke-virtual {v9, v0, v12}, Lac5;->G(Lak2;I)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v1}, Lpb5;->e0()Lds4;

    .line 293
    .line 294
    .line 295
    move-result-object v9

    .line 296
    sget-object v12, Le05;->f0:Ld05;

    .line 297
    .line 298
    const/16 v13, 0x23

    .line 299
    .line 300
    invoke-virtual {v9, v10, v12}, Lds4;->E(Ljava/lang/String;Ld05;)I

    .line 301
    .line 302
    .line 303
    move-result v9

    .line 304
    invoke-static {v9, v13}, Ljava/lang/Math;->min(II)I

    .line 305
    .line 306
    .line 307
    move-result v9

    .line 308
    const/16 v12, 0xa

    .line 309
    .line 310
    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    .line 311
    .line 312
    .line 313
    move-result v9

    .line 314
    iget-object v12, v0, Lak2;->f:Ljava/lang/Object;

    .line 315
    .line 316
    check-cast v12, Landroid/os/Bundle;

    .line 317
    .line 318
    new-instance v13, Ljava/util/TreeSet;

    .line 319
    .line 320
    invoke-virtual {v12}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 321
    .line 322
    .line 323
    move-result-object v3

    .line 324
    invoke-direct {v13, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v13}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 328
    .line 329
    .line 330
    move-result-object v3

    .line 331
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 332
    .line 333
    .line 334
    move-result v13

    .line 335
    if-eqz v13, :cond_7

    .line 336
    .line 337
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v13

    .line 341
    check-cast v13, Ljava/lang/String;

    .line 342
    .line 343
    move-object/from16 v18, v3

    .line 344
    .line 345
    const-string v3, "items"

    .line 346
    .line 347
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result v3

    .line 351
    if-eqz v3, :cond_6

    .line 352
    .line 353
    invoke-virtual {v1}, Lpb5;->k0()Lac5;

    .line 354
    .line 355
    .line 356
    move-result-object v3

    .line 357
    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    .line 358
    .line 359
    .line 360
    move-result-object v13

    .line 361
    invoke-virtual {v3, v13, v9}, Lac5;->H([Landroid/os/Parcelable;I)V

    .line 362
    .line 363
    .line 364
    :cond_6
    move-object/from16 v3, v18

    .line 365
    .line 366
    goto :goto_2

    .line 367
    :cond_7
    invoke-virtual {v0}, Lak2;->b()Lbu4;

    .line 368
    .line 369
    .line 370
    move-result-object v3

    .line 371
    iget-object v9, v3, Lbu4;->o:Lzt4;

    .line 372
    .line 373
    iget-object v12, v3, Lbu4;->n:Ljava/lang/String;

    .line 374
    .line 375
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    invoke-virtual {v0}, La25;->F()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    const/4 v13, 0x2

    .line 384
    invoke-static {v0, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 385
    .line 386
    .line 387
    move-result v0

    .line 388
    if-eqz v0, :cond_8

    .line 389
    .line 390
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    invoke-virtual {v0}, La25;->C()Lx15;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    invoke-virtual {v15}, Lr45;->m()Lp15;

    .line 399
    .line 400
    .line 401
    move-result-object v13

    .line 402
    invoke-virtual {v13, v3}, Lp15;->d(Lbu4;)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v13

    .line 406
    move-object/from16 v18, v11

    .line 407
    .line 408
    const-string v11, "Logging event"

    .line 409
    .line 410
    invoke-virtual {v0, v13, v11}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    goto :goto_3

    .line 414
    :cond_8
    move-object/from16 v18, v11

    .line 415
    .line 416
    :goto_3
    invoke-virtual {v1}, Lpb5;->g0()Lat4;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    invoke-virtual {v0}, Lat4;->j0()V

    .line 421
    .line 422
    .line 423
    :try_start_0
    invoke-virtual {v1, v2}, Lpb5;->c0(Lvc5;)Lm25;

    .line 424
    .line 425
    .line 426
    const-string v0, "ecommerce_purchase"

    .line 427
    .line 428
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 429
    .line 430
    .line 431
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    const-string v11, "refund"

    .line 433
    .line 434
    const/16 v29, 0x1

    .line 435
    .line 436
    if-nez v0, :cond_9

    .line 437
    .line 438
    :try_start_1
    const-string v0, "purchase"

    .line 439
    .line 440
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 441
    .line 442
    .line 443
    move-result v0

    .line 444
    if-nez v0, :cond_9

    .line 445
    .line 446
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 447
    .line 448
    .line 449
    move-result v0

    .line 450
    if-eqz v0, :cond_a

    .line 451
    .line 452
    :cond_9
    move/from16 v0, v29

    .line 453
    .line 454
    goto :goto_4

    .line 455
    :cond_a
    const/4 v0, 0x0

    .line 456
    goto :goto_4

    .line 457
    :catchall_0
    move-exception v0

    .line 458
    move-object v3, v1

    .line 459
    goto/16 :goto_2a

    .line 460
    .line 461
    :goto_4
    const-string v13, "_iap"

    .line 462
    .line 463
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    move-result v13

    .line 467
    if-nez v13, :cond_c

    .line 468
    .line 469
    if-eqz v0, :cond_b

    .line 470
    .line 471
    move/from16 v0, v29

    .line 472
    .line 473
    goto :goto_5

    .line 474
    :cond_b
    move-object/from16 v32, v4

    .line 475
    .line 476
    move-object/from16 v33, v5

    .line 477
    .line 478
    move-object/from16 v35, v6

    .line 479
    .line 480
    move-object v4, v9

    .line 481
    move-object/from16 p1, v12

    .line 482
    .line 483
    move-object v5, v14

    .line 484
    move/from16 v31, v16

    .line 485
    .line 486
    move-object/from16 v22, v17

    .line 487
    .line 488
    move-object/from16 v30, v18

    .line 489
    .line 490
    const/4 v6, 0x0

    .line 491
    goto/16 :goto_d

    .line 492
    .line 493
    :cond_c
    :goto_5
    const-string v13, "_ltv_"

    .line 494
    .line 495
    move-object/from16 v20, v14

    .line 496
    .line 497
    invoke-virtual {v9}, Lzt4;->i0()Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 501
    move-object/from16 v21, v15

    .line 502
    .line 503
    iget-object v15, v9, Lzt4;->n:Landroid/os/Bundle;

    .line 504
    .line 505
    move-object/from16 v22, v9

    .line 506
    .line 507
    const-string v9, "value"

    .line 508
    .line 509
    if-eqz v0, :cond_f

    .line 510
    .line 511
    :try_start_2
    invoke-virtual/range {v22 .. v22}, Lzt4;->Z()Ljava/lang/Double;

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 516
    .line 517
    .line 518
    move-result-wide v23

    .line 519
    const-wide v30, 0x412e848000000000L    # 1000000.0

    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    mul-double v23, v23, v30

    .line 525
    .line 526
    const-wide/16 v32, 0x0

    .line 527
    .line 528
    cmpl-double v0, v23, v32

    .line 529
    .line 530
    if-nez v0, :cond_d

    .line 531
    .line 532
    move-object/from16 v32, v4

    .line 533
    .line 534
    move-object/from16 v33, v5

    .line 535
    .line 536
    invoke-virtual {v15, v9}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 537
    .line 538
    .line 539
    move-result-wide v4

    .line 540
    long-to-double v4, v4

    .line 541
    mul-double v23, v4, v30

    .line 542
    .line 543
    goto :goto_6

    .line 544
    :cond_d
    move-object/from16 v32, v4

    .line 545
    .line 546
    move-object/from16 v33, v5

    .line 547
    .line 548
    :goto_6
    const-wide/high16 v4, 0x43e0000000000000L    # 9.223372036854776E18

    .line 549
    .line 550
    cmpg-double v0, v23, v4

    .line 551
    .line 552
    if-gtz v0, :cond_e

    .line 553
    .line 554
    const-wide/high16 v4, -0x3c20000000000000L    # -9.223372036854776E18

    .line 555
    .line 556
    cmpl-double v0, v23, v4

    .line 557
    .line 558
    if-ltz v0, :cond_e

    .line 559
    .line 560
    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->round(D)J

    .line 561
    .line 562
    .line 563
    move-result-wide v4

    .line 564
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 565
    .line 566
    .line 567
    move-result v0

    .line 568
    if-eqz v0, :cond_10

    .line 569
    .line 570
    neg-long v4, v4

    .line 571
    goto :goto_7

    .line 572
    :cond_e
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 573
    .line 574
    .line 575
    move-result-object v0

    .line 576
    invoke-virtual {v0}, La25;->A()Lx15;

    .line 577
    .line 578
    .line 579
    move-result-object v0

    .line 580
    const-string v2, "Data lost. Currency value is too big. appId"

    .line 581
    .line 582
    invoke-static {v10}, La25;->D(Ljava/lang/String;)Ly15;

    .line 583
    .line 584
    .line 585
    move-result-object v3

    .line 586
    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 587
    .line 588
    .line 589
    move-result-object v4

    .line 590
    invoke-virtual {v0, v3, v4, v2}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 591
    .line 592
    .line 593
    invoke-virtual {v1}, Lpb5;->g0()Lat4;

    .line 594
    .line 595
    .line 596
    move-result-object v0

    .line 597
    invoke-virtual {v0}, Lat4;->k0()V

    .line 598
    .line 599
    .line 600
    goto/16 :goto_12

    .line 601
    .line 602
    :cond_f
    move-object/from16 v32, v4

    .line 603
    .line 604
    move-object/from16 v33, v5

    .line 605
    .line 606
    invoke-virtual {v15, v9}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 607
    .line 608
    .line 609
    move-result-wide v4

    .line 610
    :cond_10
    :goto_7
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 611
    .line 612
    .line 613
    move-result v0

    .line 614
    if-nez v0, :cond_14

    .line 615
    .line 616
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 617
    .line 618
    invoke-virtual {v14, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 619
    .line 620
    .line 621
    move-result-object v0

    .line 622
    const-string v9, "[A-Z]{3}"

    .line 623
    .line 624
    invoke-virtual {v0, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 625
    .line 626
    .line 627
    move-result v9

    .line 628
    if-eqz v9, :cond_14

    .line 629
    .line 630
    invoke-virtual {v13, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 631
    .line 632
    .line 633
    move-result-object v9

    .line 634
    invoke-virtual {v1}, Lpb5;->g0()Lat4;

    .line 635
    .line 636
    .line 637
    move-result-object v0

    .line 638
    invoke-virtual {v0, v10, v9}, Lat4;->r0(Ljava/lang/String;Ljava/lang/String;)Lxb5;

    .line 639
    .line 640
    .line 641
    move-result-object v0

    .line 642
    if-eqz v0, :cond_11

    .line 643
    .line 644
    iget-object v0, v0, Lxb5;->e:Ljava/lang/Object;

    .line 645
    .line 646
    instance-of v11, v0, Ljava/lang/Long;

    .line 647
    .line 648
    if-nez v11, :cond_12

    .line 649
    .line 650
    :cond_11
    move-object v15, v12

    .line 651
    const/16 v13, 0x64

    .line 652
    .line 653
    const/16 v19, 0x0

    .line 654
    .line 655
    move-wide v11, v4

    .line 656
    move/from16 v4, v16

    .line 657
    .line 658
    move-object/from16 v5, v20

    .line 659
    .line 660
    goto :goto_8

    .line 661
    :cond_12
    check-cast v0, Ljava/lang/Long;

    .line 662
    .line 663
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 664
    .line 665
    .line 666
    move-result-wide v13

    .line 667
    move-object v11, v12

    .line 668
    move-object v12, v9

    .line 669
    new-instance v9, Lxb5;

    .line 670
    .line 671
    move-object v15, v11

    .line 672
    iget-object v11, v3, Lbu4;->p:Ljava/lang/String;

    .line 673
    .line 674
    invoke-virtual {v1}, Lpb5;->f()Lcom/google/android/gms/common/util/Clock;

    .line 675
    .line 676
    .line 677
    move-result-object v0

    .line 678
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 679
    .line 680
    .line 681
    move-result-wide v23

    .line 682
    add-long/2addr v13, v4

    .line 683
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 684
    .line 685
    .line 686
    move-result-object v0

    .line 687
    move-object v4, v15

    .line 688
    move-object/from16 v5, v20

    .line 689
    .line 690
    move-wide/from16 v13, v23

    .line 691
    .line 692
    const/16 v19, 0x0

    .line 693
    .line 694
    move-object v15, v0

    .line 695
    invoke-direct/range {v9 .. v15}, Lxb5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 696
    .line 697
    .line 698
    move-object/from16 p1, v4

    .line 699
    .line 700
    move-object/from16 v35, v6

    .line 701
    .line 702
    move/from16 v31, v16

    .line 703
    .line 704
    move-object/from16 v30, v18

    .line 705
    .line 706
    move/from16 v6, v19

    .line 707
    .line 708
    move-object/from16 v4, v22

    .line 709
    .line 710
    goto/16 :goto_b

    .line 711
    .line 712
    :goto_8
    invoke-virtual {v1}, Lpb5;->g0()Lat4;

    .line 713
    .line 714
    .line 715
    move-result-object v14

    .line 716
    invoke-virtual {v1}, Lpb5;->e0()Lds4;

    .line 717
    .line 718
    .line 719
    move-result-object v0

    .line 720
    sget-object v13, Le05;->T:Ld05;

    .line 721
    .line 722
    invoke-virtual {v0, v10, v13}, Lds4;->E(Ljava/lang/String;Ld05;)I

    .line 723
    .line 724
    .line 725
    move-result v0

    .line 726
    add-int/lit8 v0, v0, -0x1

    .line 727
    .line 728
    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 729
    .line 730
    .line 731
    invoke-virtual {v14}, Lib0;->v()V

    .line 732
    .line 733
    .line 734
    invoke-virtual {v14}, Lab5;->w()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 735
    .line 736
    .line 737
    :try_start_3
    invoke-virtual {v14}, Lat4;->m0()Landroid/database/sqlite/SQLiteDatabase;

    .line 738
    .line 739
    .line 740
    move-result-object v13
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 741
    move-object/from16 v16, v9

    .line 742
    .line 743
    :try_start_4
    const-string v9, "delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like \'!_ltv!_%\' escape \'!\'order by set_timestamp desc limit ?,10);"

    .line 744
    .line 745
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 746
    .line 747
    .line 748
    move-result-object v0

    .line 749
    filled-new-array {v10, v10, v0}, [Ljava/lang/String;

    .line 750
    .line 751
    .line 752
    move-result-object v0

    .line 753
    invoke-virtual {v13, v9, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 754
    .line 755
    .line 756
    goto :goto_a

    .line 757
    :catch_0
    move-exception v0

    .line 758
    goto :goto_9

    .line 759
    :catch_1
    move-exception v0

    .line 760
    move-object/from16 v16, v9

    .line 761
    .line 762
    :goto_9
    :try_start_5
    iget-object v9, v14, Lib0;->a:Ljava/lang/Object;

    .line 763
    .line 764
    check-cast v9, Lr45;

    .line 765
    .line 766
    invoke-virtual {v9}, Lr45;->c()La25;

    .line 767
    .line 768
    .line 769
    move-result-object v9

    .line 770
    invoke-virtual {v9}, La25;->z()Lx15;

    .line 771
    .line 772
    .line 773
    move-result-object v9

    .line 774
    const-string v13, "Error pruning currencies. appId"

    .line 775
    .line 776
    invoke-static {v10}, La25;->D(Ljava/lang/String;)Ly15;

    .line 777
    .line 778
    .line 779
    move-result-object v14

    .line 780
    invoke-virtual {v9, v14, v0, v13}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 781
    .line 782
    .line 783
    :goto_a
    new-instance v9, Lxb5;

    .line 784
    .line 785
    move-wide v12, v11

    .line 786
    iget-object v11, v3, Lbu4;->p:Ljava/lang/String;

    .line 787
    .line 788
    invoke-virtual {v1}, Lpb5;->f()Lcom/google/android/gms/common/util/Clock;

    .line 789
    .line 790
    .line 791
    move-result-object v0

    .line 792
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 793
    .line 794
    .line 795
    move-result-wide v23

    .line 796
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 797
    .line 798
    .line 799
    move-result-object v0

    .line 800
    move/from16 v31, v4

    .line 801
    .line 802
    move-object/from16 v35, v6

    .line 803
    .line 804
    move-object/from16 p1, v15

    .line 805
    .line 806
    move-object/from16 v12, v16

    .line 807
    .line 808
    move-object/from16 v30, v18

    .line 809
    .line 810
    move/from16 v6, v19

    .line 811
    .line 812
    move-object/from16 v4, v22

    .line 813
    .line 814
    move-wide/from16 v13, v23

    .line 815
    .line 816
    move-object v15, v0

    .line 817
    invoke-direct/range {v9 .. v15}, Lxb5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 818
    .line 819
    .line 820
    :goto_b
    invoke-virtual {v1}, Lpb5;->g0()Lat4;

    .line 821
    .line 822
    .line 823
    move-result-object v0

    .line 824
    invoke-virtual {v0, v9}, Lat4;->q0(Lxb5;)Z

    .line 825
    .line 826
    .line 827
    move-result v0

    .line 828
    if-nez v0, :cond_13

    .line 829
    .line 830
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 831
    .line 832
    .line 833
    move-result-object v0

    .line 834
    invoke-virtual {v0}, La25;->z()Lx15;

    .line 835
    .line 836
    .line 837
    move-result-object v0

    .line 838
    const-string v11, "Too many unique user properties are set. Ignoring user property. appId"

    .line 839
    .line 840
    invoke-static {v10}, La25;->D(Ljava/lang/String;)Ly15;

    .line 841
    .line 842
    .line 843
    move-result-object v12

    .line 844
    invoke-virtual/range {v21 .. v21}, Lr45;->m()Lp15;

    .line 845
    .line 846
    .line 847
    move-result-object v13

    .line 848
    iget-object v14, v9, Lxb5;->c:Ljava/lang/String;

    .line 849
    .line 850
    invoke-virtual {v13, v14}, Lp15;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 851
    .line 852
    .line 853
    move-result-object v13

    .line 854
    iget-object v9, v9, Lxb5;->e:Ljava/lang/Object;

    .line 855
    .line 856
    invoke-virtual {v0, v11, v12, v13, v9}, Lx15;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 857
    .line 858
    .line 859
    invoke-virtual {v1}, Lpb5;->k0()Lac5;

    .line 860
    .line 861
    .line 862
    const/4 v13, 0x0

    .line 863
    const/4 v14, 0x0

    .line 864
    const/16 v11, 0x9

    .line 865
    .line 866
    const/4 v12, 0x0

    .line 867
    move-object/from16 v9, v17

    .line 868
    .line 869
    invoke-static/range {v9 .. v14}, Lac5;->N(Lyb5;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 870
    .line 871
    .line 872
    move-object/from16 v22, v9

    .line 873
    .line 874
    goto :goto_d

    .line 875
    :cond_13
    :goto_c
    move-object/from16 v22, v17

    .line 876
    .line 877
    goto :goto_d

    .line 878
    :cond_14
    move-object/from16 v35, v6

    .line 879
    .line 880
    move-object/from16 p1, v12

    .line 881
    .line 882
    move/from16 v31, v16

    .line 883
    .line 884
    move-object/from16 v30, v18

    .line 885
    .line 886
    move-object/from16 v5, v20

    .line 887
    .line 888
    move-object/from16 v4, v22

    .line 889
    .line 890
    const/4 v6, 0x0

    .line 891
    goto :goto_c

    .line 892
    :goto_d
    invoke-static/range {p1 .. p1}, Lac5;->u0(Ljava/lang/String;)Z

    .line 893
    .line 894
    .line 895
    move-result v16

    .line 896
    move-object/from16 v9, p1

    .line 897
    .line 898
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 899
    .line 900
    .line 901
    move-result v18

    .line 902
    invoke-virtual {v1}, Lpb5;->k0()Lac5;

    .line 903
    .line 904
    .line 905
    if-nez v4, :cond_15

    .line 906
    .line 907
    const-wide/16 v13, 0x0

    .line 908
    .line 909
    goto :goto_f

    .line 910
    :cond_15
    iget-object v0, v4, Lzt4;->n:Landroid/os/Bundle;

    .line 911
    .line 912
    invoke-virtual {v0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 913
    .line 914
    .line 915
    move-result-object v0

    .line 916
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 917
    .line 918
    .line 919
    move-result-object v0

    .line 920
    const-wide/16 v13, 0x0

    .line 921
    .line 922
    :cond_16
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 923
    .line 924
    .line 925
    move-result v5

    .line 926
    if-eqz v5, :cond_17

    .line 927
    .line 928
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 929
    .line 930
    .line 931
    move-result-object v5

    .line 932
    check-cast v5, Ljava/lang/String;

    .line 933
    .line 934
    invoke-virtual {v4, v5}, Lzt4;->Y(Ljava/lang/String;)Ljava/lang/Object;

    .line 935
    .line 936
    .line 937
    move-result-object v5

    .line 938
    instance-of v15, v5, [Landroid/os/Parcelable;

    .line 939
    .line 940
    if-eqz v15, :cond_16

    .line 941
    .line 942
    check-cast v5, [Landroid/os/Parcelable;

    .line 943
    .line 944
    array-length v5, v5

    .line 945
    int-to-long v11, v5

    .line 946
    add-long/2addr v13, v11

    .line 947
    goto :goto_e

    .line 948
    :cond_17
    :goto_f
    const-wide/16 v11, 0x1

    .line 949
    .line 950
    add-long/2addr v13, v11

    .line 951
    move-object v15, v9

    .line 952
    invoke-virtual {v1}, Lpb5;->g0()Lat4;

    .line 953
    .line 954
    .line 955
    move-result-object v9

    .line 956
    move-wide/from16 v23, v11

    .line 957
    .line 958
    move-object v12, v10

    .line 959
    invoke-virtual {v1}, Lpb5;->g()J

    .line 960
    .line 961
    .line 962
    move-result-wide v10

    .line 963
    const-wide/16 v36, 0x0

    .line 964
    .line 965
    const/16 v20, 0x0

    .line 966
    .line 967
    const/16 v21, 0x0

    .line 968
    .line 969
    move-object v5, v15

    .line 970
    const/4 v15, 0x1

    .line 971
    const/16 v17, 0x0

    .line 972
    .line 973
    const/16 v19, 0x0

    .line 974
    .line 975
    move-object/from16 v38, v7

    .line 976
    .line 977
    move-wide/from16 v6, v23

    .line 978
    .line 979
    invoke-virtual/range {v9 .. v21}, Lat4;->C0(JLjava/lang/String;JZZZZZZZ)Lrs4;

    .line 980
    .line 981
    .line 982
    move-result-object v0

    .line 983
    move-object v10, v12

    .line 984
    move/from16 v21, v16

    .line 985
    .line 986
    iget-wide v11, v0, Lrs4;->b:J

    .line 987
    .line 988
    invoke-virtual {v1}, Lpb5;->e0()Lds4;

    .line 989
    .line 990
    .line 991
    sget-object v9, Le05;->l:Ld05;

    .line 992
    .line 993
    const/4 v13, 0x0

    .line 994
    invoke-virtual {v9, v13}, Ld05;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    .line 996
    .line 997
    move-result-object v9

    .line 998
    check-cast v9, Ljava/lang/Integer;

    .line 999
    .line 1000
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 1001
    .line 1002
    .line 1003
    move-result v9

    .line 1004
    int-to-long v13, v9

    .line 1005
    sub-long/2addr v11, v13

    .line 1006
    cmp-long v9, v11, v36

    .line 1007
    .line 1008
    const-wide/16 v13, 0x3e8

    .line 1009
    .line 1010
    if-lez v9, :cond_19

    .line 1011
    .line 1012
    rem-long/2addr v11, v13

    .line 1013
    cmp-long v2, v11, v6

    .line 1014
    .line 1015
    if-nez v2, :cond_18

    .line 1016
    .line 1017
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v2

    .line 1021
    invoke-virtual {v2}, La25;->z()Lx15;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v2

    .line 1025
    const-string v3, "Data loss. Too many events logged. appId, count"

    .line 1026
    .line 1027
    invoke-static {v10}, La25;->D(Ljava/lang/String;)Ly15;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v4

    .line 1031
    iget-wide v5, v0, Lrs4;->b:J

    .line 1032
    .line 1033
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v0

    .line 1037
    invoke-virtual {v2, v4, v0, v3}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1038
    .line 1039
    .line 1040
    :cond_18
    invoke-virtual {v1}, Lpb5;->g0()Lat4;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v0

    .line 1044
    invoke-virtual {v0}, Lat4;->k0()V

    .line 1045
    .line 1046
    .line 1047
    goto/16 :goto_12

    .line 1048
    .line 1049
    :cond_19
    if-eqz v21, :cond_1b

    .line 1050
    .line 1051
    iget-wide v11, v0, Lrs4;->a:J

    .line 1052
    .line 1053
    invoke-virtual {v1}, Lpb5;->e0()Lds4;

    .line 1054
    .line 1055
    .line 1056
    sget-object v9, Le05;->n:Ld05;

    .line 1057
    .line 1058
    const/4 v15, 0x0

    .line 1059
    invoke-virtual {v9, v15}, Ld05;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v9

    .line 1063
    check-cast v9, Ljava/lang/Integer;

    .line 1064
    .line 1065
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 1066
    .line 1067
    .line 1068
    move-result v9

    .line 1069
    move-wide v15, v13

    .line 1070
    int-to-long v13, v9

    .line 1071
    sub-long/2addr v11, v13

    .line 1072
    cmp-long v9, v11, v36

    .line 1073
    .line 1074
    if-lez v9, :cond_1b

    .line 1075
    .line 1076
    rem-long/2addr v11, v15

    .line 1077
    cmp-long v2, v11, v6

    .line 1078
    .line 1079
    if-nez v2, :cond_1a

    .line 1080
    .line 1081
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v2

    .line 1085
    invoke-virtual {v2}, La25;->z()Lx15;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v2

    .line 1089
    const-string v4, "Data loss. Too many public events logged. appId, count"

    .line 1090
    .line 1091
    invoke-static {v10}, La25;->D(Ljava/lang/String;)Ly15;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v5

    .line 1095
    iget-wide v6, v0, Lrs4;->a:J

    .line 1096
    .line 1097
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1098
    .line 1099
    .line 1100
    move-result-object v0

    .line 1101
    invoke-virtual {v2, v5, v0, v4}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1102
    .line 1103
    .line 1104
    :cond_1a
    invoke-virtual {v1}, Lpb5;->k0()Lac5;

    .line 1105
    .line 1106
    .line 1107
    const-string v12, "_ev"

    .line 1108
    .line 1109
    iget-object v13, v3, Lbu4;->n:Ljava/lang/String;

    .line 1110
    .line 1111
    const/4 v14, 0x0

    .line 1112
    const/16 v11, 0x10

    .line 1113
    .line 1114
    move-object/from16 v9, v22

    .line 1115
    .line 1116
    invoke-static/range {v9 .. v14}, Lac5;->N(Lyb5;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 1117
    .line 1118
    .line 1119
    invoke-virtual {v1}, Lpb5;->g0()Lat4;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v0

    .line 1123
    invoke-virtual {v0}, Lat4;->k0()V

    .line 1124
    .line 1125
    .line 1126
    goto/16 :goto_12

    .line 1127
    .line 1128
    :cond_1b
    const v9, 0xf4240

    .line 1129
    .line 1130
    .line 1131
    if-eqz v18, :cond_1d

    .line 1132
    .line 1133
    iget-wide v11, v0, Lrs4;->d:J

    .line 1134
    .line 1135
    invoke-virtual {v1}, Lpb5;->e0()Lds4;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v13

    .line 1139
    sget-object v14, Le05;->m:Ld05;

    .line 1140
    .line 1141
    invoke-virtual {v13, v10, v14}, Lds4;->E(Ljava/lang/String;Ld05;)I

    .line 1142
    .line 1143
    .line 1144
    move-result v13

    .line 1145
    invoke-static {v9, v13}, Ljava/lang/Math;->min(II)I

    .line 1146
    .line 1147
    .line 1148
    move-result v13

    .line 1149
    const/4 v14, 0x0

    .line 1150
    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    .line 1151
    .line 1152
    .line 1153
    move-result v13

    .line 1154
    int-to-long v13, v13

    .line 1155
    sub-long/2addr v11, v13

    .line 1156
    cmp-long v13, v11, v36

    .line 1157
    .line 1158
    if-lez v13, :cond_1d

    .line 1159
    .line 1160
    cmp-long v2, v11, v6

    .line 1161
    .line 1162
    if-nez v2, :cond_1c

    .line 1163
    .line 1164
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 1165
    .line 1166
    .line 1167
    move-result-object v2

    .line 1168
    invoke-virtual {v2}, La25;->z()Lx15;

    .line 1169
    .line 1170
    .line 1171
    move-result-object v2

    .line 1172
    const-string v3, "Too many error events logged. appId, count"

    .line 1173
    .line 1174
    invoke-static {v10}, La25;->D(Ljava/lang/String;)Ly15;

    .line 1175
    .line 1176
    .line 1177
    move-result-object v4

    .line 1178
    iget-wide v5, v0, Lrs4;->d:J

    .line 1179
    .line 1180
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1181
    .line 1182
    .line 1183
    move-result-object v0

    .line 1184
    invoke-virtual {v2, v4, v0, v3}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1185
    .line 1186
    .line 1187
    :cond_1c
    invoke-virtual {v1}, Lpb5;->g0()Lat4;

    .line 1188
    .line 1189
    .line 1190
    move-result-object v0

    .line 1191
    invoke-virtual {v0}, Lat4;->k0()V

    .line 1192
    .line 1193
    .line 1194
    goto/16 :goto_12

    .line 1195
    .line 1196
    :cond_1d
    invoke-virtual {v4}, Lzt4;->j0()Landroid/os/Bundle;

    .line 1197
    .line 1198
    .line 1199
    move-result-object v4

    .line 1200
    invoke-virtual {v1}, Lpb5;->k0()Lac5;

    .line 1201
    .line 1202
    .line 1203
    move-result-object v0

    .line 1204
    const-string v11, "_o"

    .line 1205
    .line 1206
    iget-object v12, v3, Lbu4;->p:Ljava/lang/String;

    .line 1207
    .line 1208
    invoke-virtual {v0, v4, v11, v12}, Lac5;->M(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1209
    .line 1210
    .line 1211
    invoke-virtual {v1}, Lpb5;->k0()Lac5;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v0

    .line 1215
    iget-object v11, v2, Lvc5;->O:Ljava/lang/String;

    .line 1216
    .line 1217
    invoke-virtual {v0, v10, v11}, Lac5;->Z(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1218
    .line 1219
    .line 1220
    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1221
    const-string v11, "_r"

    .line 1222
    .line 1223
    if-eqz v0, :cond_1e

    .line 1224
    .line 1225
    :try_start_6
    invoke-virtual {v1}, Lpb5;->k0()Lac5;

    .line 1226
    .line 1227
    .line 1228
    move-result-object v0

    .line 1229
    const-string v12, "_dbg"

    .line 1230
    .line 1231
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1232
    .line 1233
    .line 1234
    move-result-object v13

    .line 1235
    invoke-virtual {v0, v4, v12, v13}, Lac5;->M(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1236
    .line 1237
    .line 1238
    invoke-virtual {v1}, Lpb5;->k0()Lac5;

    .line 1239
    .line 1240
    .line 1241
    move-result-object v0

    .line 1242
    invoke-virtual {v0, v4, v11, v13}, Lac5;->M(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1243
    .line 1244
    .line 1245
    :cond_1e
    const-string v0, "_s"

    .line 1246
    .line 1247
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1248
    .line 1249
    .line 1250
    move-result v0

    .line 1251
    if-eqz v0, :cond_1f

    .line 1252
    .line 1253
    invoke-virtual {v1}, Lpb5;->g0()Lat4;

    .line 1254
    .line 1255
    .line 1256
    move-result-object v0

    .line 1257
    invoke-virtual {v0, v10, v8}, Lat4;->r0(Ljava/lang/String;Ljava/lang/String;)Lxb5;

    .line 1258
    .line 1259
    .line 1260
    move-result-object v0

    .line 1261
    if-eqz v0, :cond_1f

    .line 1262
    .line 1263
    iget-object v0, v0, Lxb5;->e:Ljava/lang/Object;

    .line 1264
    .line 1265
    instance-of v5, v0, Ljava/lang/Long;

    .line 1266
    .line 1267
    if-eqz v5, :cond_1f

    .line 1268
    .line 1269
    invoke-virtual {v1}, Lpb5;->k0()Lac5;

    .line 1270
    .line 1271
    .line 1272
    move-result-object v5

    .line 1273
    invoke-virtual {v5, v4, v8, v0}, Lac5;->M(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1274
    .line 1275
    .line 1276
    :cond_1f
    invoke-virtual {v1}, Lpb5;->g0()Lat4;

    .line 1277
    .line 1278
    .line 1279
    move-result-object v5

    .line 1280
    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1281
    .line 1282
    .line 1283
    invoke-virtual {v5}, Lib0;->v()V

    .line 1284
    .line 1285
    .line 1286
    invoke-virtual {v5}, Lab5;->w()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1287
    .line 1288
    .line 1289
    :try_start_7
    invoke-virtual {v5}, Lat4;->m0()Landroid/database/sqlite/SQLiteDatabase;

    .line 1290
    .line 1291
    .line 1292
    move-result-object v0

    .line 1293
    iget-object v8, v5, Lib0;->a:Ljava/lang/Object;

    .line 1294
    .line 1295
    check-cast v8, Lr45;

    .line 1296
    .line 1297
    iget-object v8, v8, Lr45;->d:Lds4;

    .line 1298
    .line 1299
    sget-object v12, Le05;->q:Ld05;

    .line 1300
    .line 1301
    invoke-virtual {v8, v10, v12}, Lds4;->E(Ljava/lang/String;Ld05;)I

    .line 1302
    .line 1303
    .line 1304
    move-result v8

    .line 1305
    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    .line 1306
    .line 1307
    .line 1308
    move-result v8

    .line 1309
    const/4 v14, 0x0

    .line 1310
    invoke-static {v14, v8}, Ljava/lang/Math;->max(II)I

    .line 1311
    .line 1312
    .line 1313
    move-result v8

    .line 1314
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1315
    .line 1316
    .line 1317
    move-result-object v8

    .line 1318
    const-string v9, "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)"

    .line 1319
    .line 1320
    filled-new-array {v10, v8}, [Ljava/lang/String;

    .line 1321
    .line 1322
    .line 1323
    move-result-object v8
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1324
    move-object/from16 v12, v38

    .line 1325
    .line 1326
    :try_start_8
    invoke-virtual {v0, v12, v9, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1327
    .line 1328
    .line 1329
    move-result v0
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1330
    int-to-long v8, v0

    .line 1331
    goto :goto_11

    .line 1332
    :catch_2
    move-exception v0

    .line 1333
    goto :goto_10

    .line 1334
    :catch_3
    move-exception v0

    .line 1335
    move-object/from16 v12, v38

    .line 1336
    .line 1337
    :goto_10
    :try_start_9
    iget-object v5, v5, Lib0;->a:Ljava/lang/Object;

    .line 1338
    .line 1339
    check-cast v5, Lr45;

    .line 1340
    .line 1341
    invoke-virtual {v5}, Lr45;->c()La25;

    .line 1342
    .line 1343
    .line 1344
    move-result-object v5

    .line 1345
    invoke-virtual {v5}, La25;->z()Lx15;

    .line 1346
    .line 1347
    .line 1348
    move-result-object v5

    .line 1349
    const-string v8, "Error deleting over the limit events. appId"

    .line 1350
    .line 1351
    invoke-static {v10}, La25;->D(Ljava/lang/String;)Ly15;

    .line 1352
    .line 1353
    .line 1354
    move-result-object v9

    .line 1355
    invoke-virtual {v5, v9, v0, v8}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1356
    .line 1357
    .line 1358
    move-wide/from16 v8, v36

    .line 1359
    .line 1360
    :goto_11
    cmp-long v0, v8, v36

    .line 1361
    .line 1362
    if-lez v0, :cond_20

    .line 1363
    .line 1364
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 1365
    .line 1366
    .line 1367
    move-result-object v0

    .line 1368
    invoke-virtual {v0}, La25;->A()Lx15;

    .line 1369
    .line 1370
    .line 1371
    move-result-object v0

    .line 1372
    const-string v5, "Data lost. Too many events stored on disk, deleted. appId"

    .line 1373
    .line 1374
    invoke-static {v10}, La25;->D(Ljava/lang/String;)Ly15;

    .line 1375
    .line 1376
    .line 1377
    move-result-object v13

    .line 1378
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1379
    .line 1380
    .line 1381
    move-result-object v8

    .line 1382
    invoke-virtual {v0, v13, v8, v5}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1383
    .line 1384
    .line 1385
    :cond_20
    new-instance v9, Lvt4;

    .line 1386
    .line 1387
    move-object/from16 v38, v12

    .line 1388
    .line 1389
    move-object v12, v10

    .line 1390
    iget-object v10, v1, Lpb5;->l:Lr45;

    .line 1391
    .line 1392
    move-object v5, v11

    .line 1393
    iget-object v11, v3, Lbu4;->p:Ljava/lang/String;

    .line 1394
    .line 1395
    iget-object v13, v3, Lbu4;->n:Ljava/lang/String;

    .line 1396
    .line 1397
    iget-wide v14, v3, Lbu4;->q:J

    .line 1398
    .line 1399
    move-wide/from16 v39, v6

    .line 1400
    .line 1401
    iget-wide v6, v3, Lbu4;->r:J

    .line 1402
    .line 1403
    const-wide/16 v18, 0x0

    .line 1404
    .line 1405
    move-object/from16 v20, v4

    .line 1406
    .line 1407
    move-wide/from16 v16, v6

    .line 1408
    .line 1409
    move-object/from16 v3, v38

    .line 1410
    .line 1411
    invoke-direct/range {v9 .. v20}, Lvt4;-><init>(Lr45;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLandroid/os/Bundle;)V

    .line 1412
    .line 1413
    .line 1414
    move-object v0, v9

    .line 1415
    move-object v4, v10

    .line 1416
    move-object v10, v12

    .line 1417
    invoke-virtual {v1}, Lpb5;->g0()Lat4;

    .line 1418
    .line 1419
    .line 1420
    move-result-object v6

    .line 1421
    iget-object v11, v0, Lvt4;->b:Ljava/lang/String;

    .line 1422
    .line 1423
    move-object/from16 v7, v35

    .line 1424
    .line 1425
    invoke-virtual {v6, v7, v10, v11}, Lat4;->V(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lxt4;

    .line 1426
    .line 1427
    .line 1428
    move-result-object v6

    .line 1429
    if-nez v6, :cond_22

    .line 1430
    .line 1431
    invoke-virtual {v1}, Lpb5;->g0()Lat4;

    .line 1432
    .line 1433
    .line 1434
    move-result-object v6

    .line 1435
    invoke-virtual {v6, v10}, Lat4;->M(Ljava/lang/String;)J

    .line 1436
    .line 1437
    .line 1438
    move-result-wide v8

    .line 1439
    invoke-virtual {v1}, Lpb5;->e0()Lds4;

    .line 1440
    .line 1441
    .line 1442
    move-result-object v6

    .line 1443
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1444
    .line 1445
    .line 1446
    sget-object v12, Le05;->W:Ld05;

    .line 1447
    .line 1448
    invoke-virtual {v6, v10, v12}, Lds4;->E(Ljava/lang/String;Ld05;)I

    .line 1449
    .line 1450
    .line 1451
    move-result v6

    .line 1452
    const/16 v13, 0x7d0

    .line 1453
    .line 1454
    invoke-static {v6, v13}, Ljava/lang/Math;->min(II)I

    .line 1455
    .line 1456
    .line 1457
    move-result v6

    .line 1458
    const/16 v14, 0x1f4

    .line 1459
    .line 1460
    invoke-static {v6, v14}, Ljava/lang/Math;->max(II)I

    .line 1461
    .line 1462
    .line 1463
    move-result v6

    .line 1464
    int-to-long v14, v6

    .line 1465
    cmp-long v6, v8, v14

    .line 1466
    .line 1467
    if-ltz v6, :cond_21

    .line 1468
    .line 1469
    if-eqz v21, :cond_21

    .line 1470
    .line 1471
    invoke-virtual {v1}, Lpb5;->k0()Lac5;

    .line 1472
    .line 1473
    .line 1474
    move-result-object v6

    .line 1475
    invoke-virtual {v6, v11}, Lac5;->C0(Ljava/lang/String;)Z

    .line 1476
    .line 1477
    .line 1478
    move-result v6

    .line 1479
    if-nez v6, :cond_21

    .line 1480
    .line 1481
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 1482
    .line 1483
    .line 1484
    move-result-object v0

    .line 1485
    invoke-virtual {v0}, La25;->z()Lx15;

    .line 1486
    .line 1487
    .line 1488
    move-result-object v0

    .line 1489
    const-string v2, "Too many event names used, ignoring event. appId, name, supported count"

    .line 1490
    .line 1491
    invoke-static {v10}, La25;->D(Ljava/lang/String;)Ly15;

    .line 1492
    .line 1493
    .line 1494
    move-result-object v3

    .line 1495
    invoke-virtual {v4}, Lr45;->m()Lp15;

    .line 1496
    .line 1497
    .line 1498
    move-result-object v4

    .line 1499
    invoke-virtual {v4, v11}, Lp15;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1500
    .line 1501
    .line 1502
    move-result-object v4

    .line 1503
    invoke-virtual {v1}, Lpb5;->e0()Lds4;

    .line 1504
    .line 1505
    .line 1506
    move-result-object v5

    .line 1507
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1508
    .line 1509
    .line 1510
    invoke-virtual {v5, v10, v12}, Lds4;->E(Ljava/lang/String;Ld05;)I

    .line 1511
    .line 1512
    .line 1513
    move-result v5

    .line 1514
    invoke-static {v5, v13}, Ljava/lang/Math;->min(II)I

    .line 1515
    .line 1516
    .line 1517
    move-result v5

    .line 1518
    const/16 v6, 0x1f4

    .line 1519
    .line 1520
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    .line 1521
    .line 1522
    .line 1523
    move-result v5

    .line 1524
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1525
    .line 1526
    .line 1527
    move-result-object v5

    .line 1528
    invoke-virtual {v0, v2, v3, v4, v5}, Lx15;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1529
    .line 1530
    .line 1531
    invoke-virtual {v1}, Lpb5;->k0()Lac5;

    .line 1532
    .line 1533
    .line 1534
    const/4 v13, 0x0

    .line 1535
    const/4 v14, 0x0

    .line 1536
    const/16 v11, 0x8

    .line 1537
    .line 1538
    const/4 v12, 0x0

    .line 1539
    move-object/from16 v9, v22

    .line 1540
    .line 1541
    invoke-static/range {v9 .. v14}, Lac5;->N(Lyb5;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1542
    .line 1543
    .line 1544
    :goto_12
    invoke-virtual {v1}, Lpb5;->g0()Lat4;

    .line 1545
    .line 1546
    .line 1547
    move-result-object v0

    .line 1548
    invoke-virtual {v0}, Lat4;->l0()V

    .line 1549
    .line 1550
    .line 1551
    return-void

    .line 1552
    :cond_21
    move-object/from16 v8, v22

    .line 1553
    .line 1554
    :try_start_a
    new-instance v9, Lxt4;

    .line 1555
    .line 1556
    iget-wide v12, v0, Lvt4;->d:J

    .line 1557
    .line 1558
    const/16 v24, 0x0

    .line 1559
    .line 1560
    const/16 v25, 0x0

    .line 1561
    .line 1562
    move-wide/from16 v18, v12

    .line 1563
    .line 1564
    const-wide/16 v12, 0x0

    .line 1565
    .line 1566
    const-wide/16 v14, 0x0

    .line 1567
    .line 1568
    const-wide/16 v16, 0x0

    .line 1569
    .line 1570
    const-wide/16 v20, 0x0

    .line 1571
    .line 1572
    const/16 v22, 0x0

    .line 1573
    .line 1574
    const/16 v23, 0x0

    .line 1575
    .line 1576
    invoke-direct/range {v9 .. v25}, Lxt4;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    .line 1577
    .line 1578
    .line 1579
    move-object v6, v0

    .line 1580
    goto :goto_13

    .line 1581
    :cond_22
    move-object/from16 v8, v22

    .line 1582
    .line 1583
    iget-wide v11, v6, Lxt4;->f:J

    .line 1584
    .line 1585
    invoke-virtual {v0, v4, v11, v12}, Lvt4;->a(Lr45;J)Lvt4;

    .line 1586
    .line 1587
    .line 1588
    move-result-object v9

    .line 1589
    iget-wide v11, v9, Lvt4;->d:J

    .line 1590
    .line 1591
    invoke-virtual {v6, v11, v12}, Lxt4;->a(J)Lxt4;

    .line 1592
    .line 1593
    .line 1594
    move-result-object v0

    .line 1595
    move-object v6, v9

    .line 1596
    move-object v9, v0

    .line 1597
    :goto_13
    invoke-virtual {v1}, Lpb5;->g0()Lat4;

    .line 1598
    .line 1599
    .line 1600
    move-result-object v0

    .line 1601
    invoke-virtual {v0, v7, v9}, Lat4;->W(Ljava/lang/String;Lxt4;)V

    .line 1602
    .line 1603
    .line 1604
    invoke-virtual {v1}, Lpb5;->d()Lj45;

    .line 1605
    .line 1606
    .line 1607
    move-result-object v0

    .line 1608
    invoke-virtual {v0}, Lj45;->v()V

    .line 1609
    .line 1610
    .line 1611
    invoke-virtual {v1}, Lpb5;->l0()V

    .line 1612
    .line 1613
    .line 1614
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1615
    .line 1616
    .line 1617
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1618
    .line 1619
    .line 1620
    iget-object v0, v6, Lvt4;->a:Ljava/lang/String;

    .line 1621
    .line 1622
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1623
    .line 1624
    .line 1625
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1626
    .line 1627
    .line 1628
    move-result v0

    .line 1629
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 1630
    .line 1631
    .line 1632
    invoke-static {}, Lu45;->Y()Lq45;

    .line 1633
    .line 1634
    .line 1635
    move-result-object v7

    .line 1636
    invoke-virtual {v7}, Lq45;->x()V

    .line 1637
    .line 1638
    .line 1639
    invoke-virtual {v7}, Lq45;->i()V

    .line 1640
    .line 1641
    .line 1642
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1643
    .line 1644
    .line 1645
    move-result v0

    .line 1646
    if-nez v0, :cond_23

    .line 1647
    .line 1648
    invoke-virtual {v7, v10}, Lq45;->o(Ljava/lang/String;)V

    .line 1649
    .line 1650
    .line 1651
    :cond_23
    iget-object v0, v2, Lvc5;->q:Ljava/lang/String;

    .line 1652
    .line 1653
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1654
    .line 1655
    .line 1656
    move-result v9

    .line 1657
    if-nez v9, :cond_24

    .line 1658
    .line 1659
    invoke-virtual {v7, v0}, Lq45;->m(Ljava/lang/String;)V

    .line 1660
    .line 1661
    .line 1662
    :cond_24
    iget-object v9, v2, Lvc5;->p:Ljava/lang/String;

    .line 1663
    .line 1664
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1665
    .line 1666
    .line 1667
    move-result v11

    .line 1668
    if-nez v11, :cond_25

    .line 1669
    .line 1670
    invoke-virtual {v7, v9}, Lq45;->p(Ljava/lang/String;)V

    .line 1671
    .line 1672
    .line 1673
    :cond_25
    iget-object v11, v2, Lvc5;->H:Ljava/lang/String;

    .line 1674
    .line 1675
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1676
    .line 1677
    .line 1678
    move-result v12

    .line 1679
    if-nez v12, :cond_26

    .line 1680
    .line 1681
    invoke-virtual {v7, v11}, Lq45;->Q(Ljava/lang/String;)V

    .line 1682
    .line 1683
    .line 1684
    :cond_26
    iget-wide v12, v2, Lvc5;->w:J

    .line 1685
    .line 1686
    const-wide/32 v14, -0x80000000

    .line 1687
    .line 1688
    .line 1689
    cmp-long v14, v12, v14

    .line 1690
    .line 1691
    if-eqz v14, :cond_27

    .line 1692
    .line 1693
    long-to-int v14, v12

    .line 1694
    invoke-virtual {v7, v14}, Lq45;->K(I)V

    .line 1695
    .line 1696
    .line 1697
    :cond_27
    iget-wide v14, v2, Lvc5;->r:J

    .line 1698
    .line 1699
    invoke-virtual {v7, v14, v15}, Lq45;->q(J)V

    .line 1700
    .line 1701
    .line 1702
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1703
    .line 1704
    .line 1705
    move-result v16

    .line 1706
    if-nez v16, :cond_28

    .line 1707
    .line 1708
    move-object/from16 v38, v3

    .line 1709
    .line 1710
    move-object/from16 v3, v30

    .line 1711
    .line 1712
    invoke-virtual {v7, v3}, Lq45;->G(Ljava/lang/String;)V

    .line 1713
    .line 1714
    .line 1715
    goto :goto_14

    .line 1716
    :cond_28
    move-object/from16 v38, v3

    .line 1717
    .line 1718
    move-object/from16 v3, v30

    .line 1719
    .line 1720
    :goto_14
    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1721
    .line 1722
    .line 1723
    move-result-object v16

    .line 1724
    move-object/from16 v17, v11

    .line 1725
    .line 1726
    move-object/from16 v11, v16

    .line 1727
    .line 1728
    check-cast v11, Ljava/lang/String;

    .line 1729
    .line 1730
    invoke-virtual {v1, v11}, Lpb5;->a(Ljava/lang/String;)Ly55;

    .line 1731
    .line 1732
    .line 1733
    move-result-object v11

    .line 1734
    move-wide/from16 v18, v14

    .line 1735
    .line 1736
    iget-object v14, v2, Lvc5;->F:Ljava/lang/String;

    .line 1737
    .line 1738
    move-wide/from16 v20, v12

    .line 1739
    .line 1740
    const/16 v15, 0x64

    .line 1741
    .line 1742
    invoke-static {v15, v14}, Ly55;->c(ILjava/lang/String;)Ly55;

    .line 1743
    .line 1744
    .line 1745
    move-result-object v12

    .line 1746
    invoke-virtual {v11, v12}, Ly55;->j(Ly55;)Ly55;

    .line 1747
    .line 1748
    .line 1749
    move-result-object v11

    .line 1750
    invoke-virtual {v11}, Ly55;->f()Ljava/lang/String;

    .line 1751
    .line 1752
    .line 1753
    move-result-object v12

    .line 1754
    invoke-virtual {v7, v12}, Lq45;->P(Ljava/lang/String;)V

    .line 1755
    .line 1756
    .line 1757
    invoke-static {}, Ler4;->a()V

    .line 1758
    .line 1759
    .line 1760
    invoke-virtual {v1}, Lpb5;->e0()Lds4;

    .line 1761
    .line 1762
    .line 1763
    move-result-object v12

    .line 1764
    sget-object v13, Le05;->O0:Ld05;

    .line 1765
    .line 1766
    invoke-virtual {v12, v10, v13}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 1767
    .line 1768
    .line 1769
    move-result v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1770
    sget-object v13, Lx55;->o:Lx55;

    .line 1771
    .line 1772
    if-eqz v12, :cond_33

    .line 1773
    .line 1774
    :try_start_b
    invoke-virtual {v1}, Lpb5;->k0()Lac5;

    .line 1775
    .line 1776
    .line 1777
    sget-object v12, Le05;->q0:Ld05;

    .line 1778
    .line 1779
    const/4 v15, 0x0

    .line 1780
    invoke-virtual {v12, v15}, Ld05;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1781
    .line 1782
    .line 1783
    move-result-object v12

    .line 1784
    check-cast v12, Ljava/lang/String;

    .line 1785
    .line 1786
    invoke-static {v12, v10}, Lac5;->W(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1787
    .line 1788
    .line 1789
    move-result v12

    .line 1790
    if-eqz v12, :cond_33

    .line 1791
    .line 1792
    iget v12, v2, Lvc5;->M:I

    .line 1793
    .line 1794
    invoke-virtual {v7, v12}, Lq45;->y(I)V

    .line 1795
    .line 1796
    .line 1797
    move-object/from16 v30, v3

    .line 1798
    .line 1799
    move-object v12, v4

    .line 1800
    iget-wide v3, v2, Lvc5;->N:J

    .line 1801
    .line 1802
    invoke-virtual {v11, v13}, Ly55;->i(Lx55;)Z

    .line 1803
    .line 1804
    .line 1805
    move-result v11

    .line 1806
    const-wide/16 v15, 0x20

    .line 1807
    .line 1808
    if-nez v11, :cond_29

    .line 1809
    .line 1810
    cmp-long v11, v3, v36

    .line 1811
    .line 1812
    if-eqz v11, :cond_29

    .line 1813
    .line 1814
    const-wide/16 v22, -0x2

    .line 1815
    .line 1816
    and-long v3, v3, v22

    .line 1817
    .line 1818
    or-long/2addr v3, v15

    .line 1819
    :cond_29
    cmp-long v11, v3, v39

    .line 1820
    .line 1821
    if-nez v11, :cond_2a

    .line 1822
    .line 1823
    move/from16 v11, v29

    .line 1824
    .line 1825
    goto :goto_15

    .line 1826
    :cond_2a
    const/4 v11, 0x0

    .line 1827
    :goto_15
    invoke-virtual {v7, v11}, Lq45;->S(Z)V

    .line 1828
    .line 1829
    .line 1830
    cmp-long v11, v3, v36

    .line 1831
    .line 1832
    if-nez v11, :cond_2b

    .line 1833
    .line 1834
    goto/16 :goto_1d

    .line 1835
    .line 1836
    :cond_2b
    invoke-static {}, Lx25;->A()Lw25;

    .line 1837
    .line 1838
    .line 1839
    move-result-object v11

    .line 1840
    and-long v22, v3, v39

    .line 1841
    .line 1842
    cmp-long v22, v22, v36

    .line 1843
    .line 1844
    if-eqz v22, :cond_2c

    .line 1845
    .line 1846
    move-wide/from16 v22, v15

    .line 1847
    .line 1848
    move/from16 v15, v29

    .line 1849
    .line 1850
    goto :goto_16

    .line 1851
    :cond_2c
    move-wide/from16 v22, v15

    .line 1852
    .line 1853
    const/4 v15, 0x0

    .line 1854
    :goto_16
    invoke-virtual {v11, v15}, Lw25;->g(Z)V

    .line 1855
    .line 1856
    .line 1857
    const-wide/16 v15, 0x2

    .line 1858
    .line 1859
    and-long/2addr v15, v3

    .line 1860
    cmp-long v15, v15, v36

    .line 1861
    .line 1862
    if-eqz v15, :cond_2d

    .line 1863
    .line 1864
    move/from16 v15, v29

    .line 1865
    .line 1866
    goto :goto_17

    .line 1867
    :cond_2d
    const/4 v15, 0x0

    .line 1868
    :goto_17
    invoke-virtual {v11, v15}, Lw25;->h(Z)V

    .line 1869
    .line 1870
    .line 1871
    const-wide/16 v15, 0x4

    .line 1872
    .line 1873
    and-long/2addr v15, v3

    .line 1874
    cmp-long v15, v15, v36

    .line 1875
    .line 1876
    if-eqz v15, :cond_2e

    .line 1877
    .line 1878
    move/from16 v15, v29

    .line 1879
    .line 1880
    goto :goto_18

    .line 1881
    :cond_2e
    const/4 v15, 0x0

    .line 1882
    :goto_18
    invoke-virtual {v11, v15}, Lw25;->i(Z)V

    .line 1883
    .line 1884
    .line 1885
    const-wide/16 v15, 0x8

    .line 1886
    .line 1887
    and-long/2addr v15, v3

    .line 1888
    cmp-long v15, v15, v36

    .line 1889
    .line 1890
    if-eqz v15, :cond_2f

    .line 1891
    .line 1892
    move/from16 v15, v29

    .line 1893
    .line 1894
    goto :goto_19

    .line 1895
    :cond_2f
    const/4 v15, 0x0

    .line 1896
    :goto_19
    invoke-virtual {v11, v15}, Lw25;->j(Z)V

    .line 1897
    .line 1898
    .line 1899
    const-wide/16 v15, 0x10

    .line 1900
    .line 1901
    and-long/2addr v15, v3

    .line 1902
    cmp-long v15, v15, v36

    .line 1903
    .line 1904
    if-eqz v15, :cond_30

    .line 1905
    .line 1906
    move/from16 v15, v29

    .line 1907
    .line 1908
    goto :goto_1a

    .line 1909
    :cond_30
    const/4 v15, 0x0

    .line 1910
    :goto_1a
    invoke-virtual {v11, v15}, Lw25;->k(Z)V

    .line 1911
    .line 1912
    .line 1913
    and-long v15, v3, v22

    .line 1914
    .line 1915
    cmp-long v15, v15, v36

    .line 1916
    .line 1917
    if-eqz v15, :cond_31

    .line 1918
    .line 1919
    move/from16 v15, v29

    .line 1920
    .line 1921
    goto :goto_1b

    .line 1922
    :cond_31
    const/4 v15, 0x0

    .line 1923
    :goto_1b
    invoke-virtual {v11, v15}, Lw25;->l(Z)V

    .line 1924
    .line 1925
    .line 1926
    const-wide/16 v15, 0x40

    .line 1927
    .line 1928
    and-long/2addr v3, v15

    .line 1929
    cmp-long v3, v3, v36

    .line 1930
    .line 1931
    if-eqz v3, :cond_32

    .line 1932
    .line 1933
    move/from16 v3, v29

    .line 1934
    .line 1935
    goto :goto_1c

    .line 1936
    :cond_32
    const/4 v3, 0x0

    .line 1937
    :goto_1c
    invoke-virtual {v11, v3}, Lw25;->m(Z)V

    .line 1938
    .line 1939
    .line 1940
    invoke-virtual {v11}, Lpn4;->d()Lrn4;

    .line 1941
    .line 1942
    .line 1943
    move-result-object v3

    .line 1944
    check-cast v3, Lx25;

    .line 1945
    .line 1946
    invoke-virtual {v7, v3}, Lq45;->z(Lx25;)V

    .line 1947
    .line 1948
    .line 1949
    goto :goto_1d

    .line 1950
    :cond_33
    move-object/from16 v30, v3

    .line 1951
    .line 1952
    move-object v12, v4

    .line 1953
    :goto_1d
    iget-wide v3, v2, Lvc5;->s:J

    .line 1954
    .line 1955
    cmp-long v11, v3, v36

    .line 1956
    .line 1957
    if-eqz v11, :cond_34

    .line 1958
    .line 1959
    invoke-virtual {v7, v3, v4}, Lq45;->v(J)V

    .line 1960
    .line 1961
    .line 1962
    :cond_34
    move-object v15, v12

    .line 1963
    iget-wide v11, v2, Lvc5;->D:J

    .line 1964
    .line 1965
    invoke-virtual {v7, v11, v12}, Lq45;->N(J)V

    .line 1966
    .line 1967
    .line 1968
    move-object/from16 v16, v15

    .line 1969
    .line 1970
    invoke-virtual {v1}, Lpb5;->e0()Lds4;

    .line 1971
    .line 1972
    .line 1973
    move-result-object v15

    .line 1974
    move-wide/from16 v22, v11

    .line 1975
    .line 1976
    sget-object v11, Le05;->U0:Ld05;

    .line 1977
    .line 1978
    const/4 v12, 0x0

    .line 1979
    invoke-virtual {v15, v12, v11}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 1980
    .line 1981
    .line 1982
    move-result v11

    .line 1983
    if-eqz v11, :cond_35

    .line 1984
    .line 1985
    invoke-virtual {v1}, Lpb5;->e0()Lds4;

    .line 1986
    .line 1987
    .line 1988
    invoke-static {}, Lxp4;->a()Ljava/lang/String;

    .line 1989
    .line 1990
    .line 1991
    move-result-object v11

    .line 1992
    invoke-virtual {v7, v11}, Lq45;->D(Ljava/lang/String;)V

    .line 1993
    .line 1994
    .line 1995
    :cond_35
    invoke-virtual {v1}, Lpb5;->e0()Lds4;

    .line 1996
    .line 1997
    .line 1998
    move-result-object v11

    .line 1999
    sget-object v12, Le05;->V0:Ld05;

    .line 2000
    .line 2001
    const/4 v15, 0x0

    .line 2002
    invoke-virtual {v11, v15, v12}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 2003
    .line 2004
    .line 2005
    move-result v11

    .line 2006
    if-eqz v11, :cond_36

    .line 2007
    .line 2008
    invoke-virtual {v1}, Lpb5;->f0()Lw35;

    .line 2009
    .line 2010
    .line 2011
    move-result-object v11

    .line 2012
    invoke-virtual {v11, v10}, Lw35;->M(Ljava/lang/String;)Ljava/util/List;

    .line 2013
    .line 2014
    .line 2015
    move-result-object v11

    .line 2016
    if-eqz v11, :cond_36

    .line 2017
    .line 2018
    invoke-virtual {v7, v11}, Lq45;->M(Ljava/util/List;)V

    .line 2019
    .line 2020
    .line 2021
    :cond_36
    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2022
    .line 2023
    .line 2024
    move-result-object v11

    .line 2025
    check-cast v11, Ljava/lang/String;

    .line 2026
    .line 2027
    invoke-virtual {v1, v11}, Lpb5;->a(Ljava/lang/String;)Ly55;

    .line 2028
    .line 2029
    .line 2030
    move-result-object v11

    .line 2031
    const/16 v15, 0x64

    .line 2032
    .line 2033
    invoke-static {v15, v14}, Ly55;->c(ILjava/lang/String;)Ly55;

    .line 2034
    .line 2035
    .line 2036
    move-result-object v12

    .line 2037
    invoke-virtual {v11, v12}, Ly55;->j(Ly55;)Ly55;

    .line 2038
    .line 2039
    .line 2040
    move-result-object v11

    .line 2041
    invoke-virtual {v11, v13}, Ly55;->i(Lx55;)Z

    .line 2042
    .line 2043
    .line 2044
    move-result v12
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 2045
    if-eqz v12, :cond_3a

    .line 2046
    .line 2047
    :try_start_c
    iget-boolean v12, v2, Lvc5;->A:Z

    .line 2048
    .line 2049
    if-eqz v12, :cond_3a

    .line 2050
    .line 2051
    iget-object v14, v1, Lpb5;->i:Lr95;

    .line 2052
    .line 2053
    invoke-virtual {v14, v2, v11}, Lr95;->z(Lvc5;Ly55;)Landroid/util/Pair;

    .line 2054
    .line 2055
    .line 2056
    move-result-object v14

    .line 2057
    iget-object v15, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2058
    .line 2059
    check-cast v15, Ljava/lang/CharSequence;

    .line 2060
    .line 2061
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2062
    .line 2063
    .line 2064
    move-result v15

    .line 2065
    if-nez v15, :cond_3a

    .line 2066
    .line 2067
    if-eqz v12, :cond_3a

    .line 2068
    .line 2069
    iget-object v12, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2070
    .line 2071
    check-cast v12, Ljava/lang/String;

    .line 2072
    .line 2073
    invoke-virtual {v7, v12}, Lq45;->s(Ljava/lang/String;)V

    .line 2074
    .line 2075
    .line 2076
    iget-object v12, v14, Landroid/util/Pair;->second:Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 2077
    .line 2078
    if-eqz v12, :cond_37

    .line 2079
    .line 2080
    :try_start_d
    check-cast v12, Ljava/lang/Boolean;

    .line 2081
    .line 2082
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2083
    .line 2084
    .line 2085
    move-result v12

    .line 2086
    invoke-virtual {v7, v12}, Lq45;->t(Z)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 2087
    .line 2088
    .line 2089
    :cond_37
    :try_start_e
    iget-object v12, v6, Lvt4;->b:Ljava/lang/String;

    .line 2090
    .line 2091
    move-object/from16 v15, v33

    .line 2092
    .line 2093
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2094
    .line 2095
    .line 2096
    move-result v12

    .line 2097
    if-nez v12, :cond_3a

    .line 2098
    .line 2099
    iget-object v12, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2100
    .line 2101
    check-cast v12, Ljava/lang/String;

    .line 2102
    .line 2103
    const-string v14, "00000000-0000-0000-0000-000000000000"

    .line 2104
    .line 2105
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2106
    .line 2107
    .line 2108
    move-result v12

    .line 2109
    if-nez v12, :cond_3a

    .line 2110
    .line 2111
    invoke-virtual {v1}, Lpb5;->g0()Lat4;

    .line 2112
    .line 2113
    .line 2114
    move-result-object v12

    .line 2115
    invoke-virtual {v12, v10}, Lat4;->z0(Ljava/lang/String;)Lm25;

    .line 2116
    .line 2117
    .line 2118
    move-result-object v12

    .line 2119
    if-eqz v12, :cond_3a

    .line 2120
    .line 2121
    iget-object v14, v12, Lm25;->a:Lr45;

    .line 2122
    .line 2123
    iget-object v14, v14, Lr45;->g:Lj45;

    .line 2124
    .line 2125
    invoke-static {v14}, Lr45;->l(Lq55;)V

    .line 2126
    .line 2127
    .line 2128
    invoke-virtual {v14}, Lj45;->v()V

    .line 2129
    .line 2130
    .line 2131
    iget-boolean v14, v12, Lm25;->y:Z

    .line 2132
    .line 2133
    if-eqz v14, :cond_3a

    .line 2134
    .line 2135
    move-object/from16 v24, v6

    .line 2136
    .line 2137
    const/4 v6, 0x0

    .line 2138
    const/4 v14, 0x0

    .line 2139
    invoke-virtual {v1, v10, v6, v14, v14}, Lpb5;->u(Ljava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V

    .line 2140
    .line 2141
    .line 2142
    new-instance v6, Landroid/os/Bundle;

    .line 2143
    .line 2144
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 2145
    .line 2146
    .line 2147
    iget-object v14, v12, Lm25;->a:Lr45;

    .line 2148
    .line 2149
    iget-object v14, v14, Lr45;->g:Lj45;

    .line 2150
    .line 2151
    invoke-static {v14}, Lr45;->l(Lq55;)V

    .line 2152
    .line 2153
    .line 2154
    invoke-virtual {v14}, Lj45;->v()V

    .line 2155
    .line 2156
    .line 2157
    iget-object v14, v12, Lm25;->z:Ljava/lang/Long;

    .line 2158
    .line 2159
    if-eqz v14, :cond_38

    .line 2160
    .line 2161
    move-object/from16 v25, v14

    .line 2162
    .line 2163
    const-string v14, "_pfo"

    .line 2164
    .line 2165
    move-wide/from16 v33, v3

    .line 2166
    .line 2167
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    .line 2168
    .line 2169
    .line 2170
    move-result-wide v3

    .line 2171
    move-wide/from16 v1, v36

    .line 2172
    .line 2173
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 2174
    .line 2175
    .line 2176
    move-result-wide v3

    .line 2177
    invoke-virtual {v6, v14, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 2178
    .line 2179
    .line 2180
    goto :goto_1e

    .line 2181
    :catchall_1
    move-exception v0

    .line 2182
    move-object/from16 v3, p0

    .line 2183
    .line 2184
    goto/16 :goto_2a

    .line 2185
    .line 2186
    :cond_38
    move-wide/from16 v33, v3

    .line 2187
    .line 2188
    :goto_1e
    iget-object v1, v12, Lm25;->a:Lr45;

    .line 2189
    .line 2190
    iget-object v1, v1, Lr45;->g:Lj45;

    .line 2191
    .line 2192
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 2193
    .line 2194
    .line 2195
    invoke-virtual {v1}, Lj45;->v()V

    .line 2196
    .line 2197
    .line 2198
    iget-object v1, v12, Lm25;->A:Ljava/lang/Long;

    .line 2199
    .line 2200
    if-eqz v1, :cond_39

    .line 2201
    .line 2202
    const-string v2, "_uwa"

    .line 2203
    .line 2204
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 2205
    .line 2206
    .line 2207
    move-result-wide v3

    .line 2208
    invoke-virtual {v6, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 2209
    .line 2210
    .line 2211
    :cond_39
    move-wide/from16 v1, v39

    .line 2212
    .line 2213
    invoke-virtual {v6, v5, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 2214
    .line 2215
    .line 2216
    invoke-virtual {v8, v10, v15, v6}, Llb5;->e(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2217
    .line 2218
    .line 2219
    goto :goto_1f

    .line 2220
    :cond_3a
    move-wide/from16 v33, v3

    .line 2221
    .line 2222
    move-object/from16 v24, v6

    .line 2223
    .line 2224
    :goto_1f
    invoke-virtual/range {v16 .. v16}, Lr45;->p()Lst4;

    .line 2225
    .line 2226
    .line 2227
    move-result-object v1

    .line 2228
    invoke-virtual {v1}, Lq55;->x()V

    .line 2229
    .line 2230
    .line 2231
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2232
    .line 2233
    invoke-virtual {v7}, Lq45;->j()V

    .line 2234
    .line 2235
    .line 2236
    invoke-virtual/range {v16 .. v16}, Lr45;->p()Lst4;

    .line 2237
    .line 2238
    .line 2239
    move-result-object v1

    .line 2240
    invoke-virtual {v1}, Lq55;->x()V

    .line 2241
    .line 2242
    .line 2243
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 2244
    .line 2245
    invoke-virtual {v7}, Lpn4;->b()V

    .line 2246
    .line 2247
    .line 2248
    iget-object v2, v7, Lpn4;->o:Lrn4;

    .line 2249
    .line 2250
    check-cast v2, Lu45;

    .line 2251
    .line 2252
    invoke-virtual {v2, v1}, Lu45;->s0(Ljava/lang/String;)V

    .line 2253
    .line 2254
    .line 2255
    invoke-virtual/range {v16 .. v16}, Lr45;->p()Lst4;

    .line 2256
    .line 2257
    .line 2258
    move-result-object v1

    .line 2259
    invoke-virtual {v1}, Lst4;->z()J

    .line 2260
    .line 2261
    .line 2262
    move-result-wide v1

    .line 2263
    long-to-int v1, v1

    .line 2264
    invoke-virtual {v7, v1}, Lq45;->l(I)V

    .line 2265
    .line 2266
    .line 2267
    invoke-virtual/range {v16 .. v16}, Lr45;->p()Lst4;

    .line 2268
    .line 2269
    .line 2270
    move-result-object v1

    .line 2271
    invoke-virtual {v1}, Lst4;->A()Ljava/lang/String;

    .line 2272
    .line 2273
    .line 2274
    move-result-object v1

    .line 2275
    invoke-virtual {v7, v1}, Lq45;->k(Ljava/lang/String;)V

    .line 2276
    .line 2277
    .line 2278
    move-object/from16 v2, p2

    .line 2279
    .line 2280
    iget-wide v3, v2, Lvc5;->J:J

    .line 2281
    .line 2282
    invoke-virtual {v7, v3, v4}, Lq45;->R(J)V

    .line 2283
    .line 2284
    .line 2285
    invoke-virtual/range {v16 .. v16}, Lr45;->a()Z

    .line 2286
    .line 2287
    .line 2288
    move-result v1

    .line 2289
    if-eqz v1, :cond_3c

    .line 2290
    .line 2291
    invoke-virtual {v7}, Lq45;->n()Ljava/lang/String;

    .line 2292
    .line 2293
    .line 2294
    const/4 v15, 0x0

    .line 2295
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2296
    .line 2297
    .line 2298
    move-result v1

    .line 2299
    if-eqz v1, :cond_3b

    .line 2300
    .line 2301
    goto :goto_20

    .line 2302
    :cond_3b
    invoke-virtual {v7}, Lpn4;->b()V

    .line 2303
    .line 2304
    .line 2305
    iget-object v0, v7, Lpn4;->o:Lrn4;

    .line 2306
    .line 2307
    check-cast v0, Lu45;

    .line 2308
    .line 2309
    invoke-virtual {v0, v15}, Lu45;->V0(Ljava/lang/String;)V

    .line 2310
    .line 2311
    .line 2312
    throw v15

    .line 2313
    :cond_3c
    :goto_20
    invoke-virtual/range {p0 .. p0}, Lpb5;->g0()Lat4;

    .line 2314
    .line 2315
    .line 2316
    move-result-object v1

    .line 2317
    invoke-virtual {v1, v10}, Lat4;->z0(Ljava/lang/String;)Lm25;

    .line 2318
    .line 2319
    .line 2320
    move-result-object v1

    .line 2321
    if-nez v1, :cond_3e

    .line 2322
    .line 2323
    new-instance v1, Lm25;

    .line 2324
    .line 2325
    move-object/from16 v15, v16

    .line 2326
    .line 2327
    invoke-direct {v1, v15, v10}, Lm25;-><init>(Lr45;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 2328
    .line 2329
    .line 2330
    move-object/from16 v3, p0

    .line 2331
    .line 2332
    :try_start_f
    invoke-virtual {v3, v11}, Lpb5;->o(Ly55;)Ljava/lang/String;

    .line 2333
    .line 2334
    .line 2335
    move-result-object v4

    .line 2336
    invoke-virtual {v1, v4}, Lm25;->G(Ljava/lang/String;)V

    .line 2337
    .line 2338
    .line 2339
    iget-object v4, v2, Lvc5;->x:Ljava/lang/String;

    .line 2340
    .line 2341
    invoke-virtual {v1, v4}, Lm25;->L(Ljava/lang/String;)V

    .line 2342
    .line 2343
    .line 2344
    move-object/from16 v4, v30

    .line 2345
    .line 2346
    invoke-virtual {v1, v4}, Lm25;->I(Ljava/lang/String;)V

    .line 2347
    .line 2348
    .line 2349
    invoke-virtual {v11, v13}, Ly55;->i(Lx55;)Z

    .line 2350
    .line 2351
    .line 2352
    move-result v4

    .line 2353
    if-eqz v4, :cond_3d

    .line 2354
    .line 2355
    iget-object v4, v3, Lpb5;->i:Lr95;

    .line 2356
    .line 2357
    invoke-virtual {v4, v2, v11}, Lr95;->B(Lvc5;Ly55;)Ljava/lang/String;

    .line 2358
    .line 2359
    .line 2360
    move-result-object v2

    .line 2361
    invoke-virtual {v1, v2}, Lm25;->J(Ljava/lang/String;)V

    .line 2362
    .line 2363
    .line 2364
    :cond_3d
    const-wide/16 v12, 0x0

    .line 2365
    .line 2366
    goto :goto_21

    .line 2367
    :catchall_2
    move-exception v0

    .line 2368
    goto/16 :goto_2a

    .line 2369
    .line 2370
    :goto_21
    invoke-virtual {v1, v12, v13}, Lm25;->e(J)V

    .line 2371
    .line 2372
    .line 2373
    invoke-virtual {v1, v12, v13}, Lm25;->M(J)V

    .line 2374
    .line 2375
    .line 2376
    invoke-virtual {v1, v12, v13}, Lm25;->N(J)V

    .line 2377
    .line 2378
    .line 2379
    invoke-virtual {v1, v9}, Lm25;->P(Ljava/lang/String;)V

    .line 2380
    .line 2381
    .line 2382
    move-wide/from16 v8, v20

    .line 2383
    .line 2384
    invoke-virtual {v1, v8, v9}, Lm25;->R(J)V

    .line 2385
    .line 2386
    .line 2387
    invoke-virtual {v1, v0}, Lm25;->S(Ljava/lang/String;)V

    .line 2388
    .line 2389
    .line 2390
    move-wide/from16 v8, v18

    .line 2391
    .line 2392
    invoke-virtual {v1, v8, v9}, Lm25;->T(J)V

    .line 2393
    .line 2394
    .line 2395
    move-wide/from16 v8, v33

    .line 2396
    .line 2397
    invoke-virtual {v1, v8, v9}, Lm25;->a(J)V

    .line 2398
    .line 2399
    .line 2400
    move/from16 v4, v31

    .line 2401
    .line 2402
    invoke-virtual {v1, v4}, Lm25;->d(Z)V

    .line 2403
    .line 2404
    .line 2405
    move-wide/from16 v8, v22

    .line 2406
    .line 2407
    invoke-virtual {v1, v8, v9}, Lm25;->c(J)V

    .line 2408
    .line 2409
    .line 2410
    invoke-virtual {v3}, Lpb5;->g0()Lat4;

    .line 2411
    .line 2412
    .line 2413
    move-result-object v0

    .line 2414
    const/4 v14, 0x0

    .line 2415
    invoke-virtual {v0, v1, v14}, Lat4;->A0(Lm25;Z)V

    .line 2416
    .line 2417
    .line 2418
    goto :goto_22

    .line 2419
    :cond_3e
    const/4 v14, 0x0

    .line 2420
    move-object/from16 v3, p0

    .line 2421
    .line 2422
    :goto_22
    sget-object v0, Lx55;->p:Lx55;

    .line 2423
    .line 2424
    invoke-virtual {v11, v0}, Ly55;->i(Lx55;)Z

    .line 2425
    .line 2426
    .line 2427
    move-result v0

    .line 2428
    if-eqz v0, :cond_3f

    .line 2429
    .line 2430
    invoke-virtual {v1}, Lm25;->F()Ljava/lang/String;

    .line 2431
    .line 2432
    .line 2433
    move-result-object v0

    .line 2434
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2435
    .line 2436
    .line 2437
    move-result v0

    .line 2438
    if-nez v0, :cond_3f

    .line 2439
    .line 2440
    invoke-virtual {v1}, Lm25;->F()Ljava/lang/String;

    .line 2441
    .line 2442
    .line 2443
    move-result-object v0

    .line 2444
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2445
    .line 2446
    .line 2447
    move-result-object v0

    .line 2448
    check-cast v0, Ljava/lang/String;

    .line 2449
    .line 2450
    invoke-virtual {v7, v0}, Lq45;->u(Ljava/lang/String;)V

    .line 2451
    .line 2452
    .line 2453
    :cond_3f
    invoke-virtual {v1}, Lm25;->K()Ljava/lang/String;

    .line 2454
    .line 2455
    .line 2456
    move-result-object v0

    .line 2457
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2458
    .line 2459
    .line 2460
    move-result v0

    .line 2461
    if-nez v0, :cond_40

    .line 2462
    .line 2463
    invoke-virtual {v1}, Lm25;->K()Ljava/lang/String;

    .line 2464
    .line 2465
    .line 2466
    move-result-object v0

    .line 2467
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2468
    .line 2469
    .line 2470
    move-result-object v0

    .line 2471
    check-cast v0, Ljava/lang/String;

    .line 2472
    .line 2473
    invoke-virtual {v7, v0}, Lq45;->J(Ljava/lang/String;)V

    .line 2474
    .line 2475
    .line 2476
    :cond_40
    invoke-virtual {v3}, Lpb5;->g0()Lat4;

    .line 2477
    .line 2478
    .line 2479
    move-result-object v0

    .line 2480
    invoke-virtual {v0, v10}, Lat4;->s0(Ljava/lang/String;)Ljava/util/List;

    .line 2481
    .line 2482
    .line 2483
    move-result-object v0

    .line 2484
    move v13, v14

    .line 2485
    :goto_23
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 2486
    .line 2487
    .line 2488
    move-result v2

    .line 2489
    if-ge v13, v2, :cond_44

    .line 2490
    .line 2491
    invoke-static {}, Lh55;->E()Lg55;

    .line 2492
    .line 2493
    .line 2494
    move-result-object v2

    .line 2495
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2496
    .line 2497
    .line 2498
    move-result-object v4

    .line 2499
    check-cast v4, Lxb5;

    .line 2500
    .line 2501
    iget-object v4, v4, Lxb5;->c:Ljava/lang/String;

    .line 2502
    .line 2503
    invoke-virtual {v2}, Lpn4;->b()V

    .line 2504
    .line 2505
    .line 2506
    iget-object v6, v2, Lpn4;->o:Lrn4;

    .line 2507
    .line 2508
    check-cast v6, Lh55;

    .line 2509
    .line 2510
    invoke-virtual {v6, v4}, Lh55;->G(Ljava/lang/String;)V

    .line 2511
    .line 2512
    .line 2513
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2514
    .line 2515
    .line 2516
    move-result-object v4

    .line 2517
    check-cast v4, Lxb5;

    .line 2518
    .line 2519
    iget-wide v8, v4, Lxb5;->d:J

    .line 2520
    .line 2521
    invoke-virtual {v2}, Lpn4;->b()V

    .line 2522
    .line 2523
    .line 2524
    iget-object v4, v2, Lpn4;->o:Lrn4;

    .line 2525
    .line 2526
    check-cast v4, Lh55;

    .line 2527
    .line 2528
    invoke-virtual {v4, v8, v9}, Lh55;->F(J)V

    .line 2529
    .line 2530
    .line 2531
    invoke-virtual {v3}, Lpb5;->j0()Lub5;

    .line 2532
    .line 2533
    .line 2534
    move-result-object v4

    .line 2535
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2536
    .line 2537
    .line 2538
    move-result-object v6

    .line 2539
    check-cast v6, Lxb5;

    .line 2540
    .line 2541
    iget-object v6, v6, Lxb5;->e:Ljava/lang/Object;

    .line 2542
    .line 2543
    invoke-virtual {v4, v2, v6}, Lub5;->S(Lg55;Ljava/lang/Object;)V

    .line 2544
    .line 2545
    .line 2546
    invoke-virtual {v7, v2}, Lq45;->Y(Lg55;)V

    .line 2547
    .line 2548
    .line 2549
    const-string v2, "_sid"

    .line 2550
    .line 2551
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2552
    .line 2553
    .line 2554
    move-result-object v4

    .line 2555
    check-cast v4, Lxb5;

    .line 2556
    .line 2557
    iget-object v4, v4, Lxb5;->c:Ljava/lang/String;

    .line 2558
    .line 2559
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2560
    .line 2561
    .line 2562
    move-result v2

    .line 2563
    if-eqz v2, :cond_42

    .line 2564
    .line 2565
    iget-object v2, v1, Lm25;->a:Lr45;

    .line 2566
    .line 2567
    iget-object v2, v2, Lr45;->g:Lj45;

    .line 2568
    .line 2569
    invoke-static {v2}, Lr45;->l(Lq55;)V

    .line 2570
    .line 2571
    .line 2572
    invoke-virtual {v2}, Lj45;->v()V

    .line 2573
    .line 2574
    .line 2575
    iget-wide v8, v1, Lm25;->w:J

    .line 2576
    .line 2577
    const-wide/16 v36, 0x0

    .line 2578
    .line 2579
    cmp-long v2, v8, v36

    .line 2580
    .line 2581
    if-eqz v2, :cond_42

    .line 2582
    .line 2583
    invoke-virtual {v3}, Lpb5;->j0()Lub5;

    .line 2584
    .line 2585
    .line 2586
    move-result-object v2

    .line 2587
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2588
    .line 2589
    .line 2590
    move-result v4

    .line 2591
    if-eqz v4, :cond_41

    .line 2592
    .line 2593
    move-object/from16 v6, v17

    .line 2594
    .line 2595
    const-wide/16 v11, 0x0

    .line 2596
    .line 2597
    goto :goto_24

    .line 2598
    :cond_41
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2599
    .line 2600
    move-object/from16 v6, v17

    .line 2601
    .line 2602
    invoke-virtual {v6, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 2603
    .line 2604
    .line 2605
    move-result-object v4

    .line 2606
    invoke-virtual {v2, v4}, Lub5;->e0([B)J

    .line 2607
    .line 2608
    .line 2609
    move-result-wide v11

    .line 2610
    :goto_24
    iget-object v2, v1, Lm25;->a:Lr45;

    .line 2611
    .line 2612
    iget-object v2, v2, Lr45;->g:Lj45;

    .line 2613
    .line 2614
    invoke-static {v2}, Lr45;->l(Lq55;)V

    .line 2615
    .line 2616
    .line 2617
    invoke-virtual {v2}, Lj45;->v()V

    .line 2618
    .line 2619
    .line 2620
    iget-wide v8, v1, Lm25;->w:J

    .line 2621
    .line 2622
    cmp-long v2, v11, v8

    .line 2623
    .line 2624
    if-eqz v2, :cond_43

    .line 2625
    .line 2626
    invoke-virtual {v7}, Lpn4;->b()V

    .line 2627
    .line 2628
    .line 2629
    iget-object v2, v7, Lpn4;->o:Lrn4;

    .line 2630
    .line 2631
    check-cast v2, Lu45;

    .line 2632
    .line 2633
    invoke-virtual {v2}, Lu45;->d1()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 2634
    .line 2635
    .line 2636
    goto :goto_25

    .line 2637
    :cond_42
    move-object/from16 v6, v17

    .line 2638
    .line 2639
    :cond_43
    :goto_25
    add-int/lit8 v13, v13, 0x1

    .line 2640
    .line 2641
    move-object/from16 v17, v6

    .line 2642
    .line 2643
    goto/16 :goto_23

    .line 2644
    .line 2645
    :cond_44
    :try_start_10
    invoke-virtual {v3}, Lpb5;->g0()Lat4;

    .line 2646
    .line 2647
    .line 2648
    move-result-object v1

    .line 2649
    invoke-virtual {v7}, Lpn4;->d()Lrn4;

    .line 2650
    .line 2651
    .line 2652
    move-result-object v0

    .line 2653
    move-object v2, v0

    .line 2654
    check-cast v2, Lu45;

    .line 2655
    .line 2656
    invoke-virtual {v1}, Lib0;->v()V

    .line 2657
    .line 2658
    .line 2659
    invoke-virtual {v1}, Lab5;->w()V

    .line 2660
    .line 2661
    .line 2662
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2663
    .line 2664
    .line 2665
    invoke-virtual {v2}, Lu45;->t()Ljava/lang/String;

    .line 2666
    .line 2667
    .line 2668
    move-result-object v0

    .line 2669
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2670
    .line 2671
    .line 2672
    invoke-virtual {v2}, Lsm4;->a()[B

    .line 2673
    .line 2674
    .line 2675
    move-result-object v0

    .line 2676
    iget-object v4, v1, Lta5;->b:Lpb5;

    .line 2677
    .line 2678
    invoke-virtual {v4}, Lpb5;->j0()Lub5;

    .line 2679
    .line 2680
    .line 2681
    move-result-object v4

    .line 2682
    invoke-virtual {v4, v0}, Lub5;->e0([B)J

    .line 2683
    .line 2684
    .line 2685
    move-result-wide v8

    .line 2686
    new-instance v4, Landroid/content/ContentValues;

    .line 2687
    .line 2688
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2689
    .line 2690
    .line 2691
    invoke-virtual {v2}, Lu45;->t()Ljava/lang/String;

    .line 2692
    .line 2693
    .line 2694
    move-result-object v6

    .line 2695
    move-object/from16 v10, v32

    .line 2696
    .line 2697
    invoke-virtual {v4, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2698
    .line 2699
    .line 2700
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2701
    .line 2702
    .line 2703
    move-result-object v6

    .line 2704
    move-object/from16 v11, v28

    .line 2705
    .line 2706
    invoke-virtual {v4, v11, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2707
    .line 2708
    .line 2709
    const-string v6, "metadata"

    .line 2710
    .line 2711
    invoke-virtual {v4, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 2712
    .line 2713
    .line 2714
    :try_start_11
    invoke-virtual {v1}, Lat4;->m0()Landroid/database/sqlite/SQLiteDatabase;

    .line 2715
    .line 2716
    .line 2717
    move-result-object v0

    .line 2718
    const-string v6, "raw_events_metadata"

    .line 2719
    .line 2720
    const/4 v12, 0x4

    .line 2721
    const/4 v15, 0x0

    .line 2722
    invoke-virtual {v0, v6, v15, v4, v12}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_6
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 2723
    .line 2724
    .line 2725
    :try_start_12
    invoke-virtual {v3}, Lpb5;->g0()Lat4;

    .line 2726
    .line 2727
    .line 2728
    move-result-object v1

    .line 2729
    move-object/from16 v2, v24

    .line 2730
    .line 2731
    iget-object v0, v2, Lvt4;->g:Lzt4;

    .line 2732
    .line 2733
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2734
    .line 2735
    .line 2736
    iget-object v0, v0, Lzt4;->n:Landroid/os/Bundle;

    .line 2737
    .line 2738
    invoke-virtual {v0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 2739
    .line 2740
    .line 2741
    move-result-object v0

    .line 2742
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 2743
    .line 2744
    .line 2745
    move-result-object v0

    .line 2746
    :cond_45
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 2747
    .line 2748
    .line 2749
    move-result v4

    .line 2750
    if-eqz v4, :cond_46

    .line 2751
    .line 2752
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2753
    .line 2754
    .line 2755
    move-result-object v4

    .line 2756
    check-cast v4, Ljava/lang/String;

    .line 2757
    .line 2758
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2759
    .line 2760
    .line 2761
    move-result v4

    .line 2762
    if-eqz v4, :cond_45

    .line 2763
    .line 2764
    goto :goto_26

    .line 2765
    :cond_46
    invoke-virtual {v3}, Lpb5;->f0()Lw35;

    .line 2766
    .line 2767
    .line 2768
    move-result-object v0

    .line 2769
    iget-object v4, v2, Lvt4;->a:Ljava/lang/String;

    .line 2770
    .line 2771
    iget-object v5, v2, Lvt4;->b:Ljava/lang/String;

    .line 2772
    .line 2773
    invoke-virtual {v0, v4, v5}, Lw35;->L(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2774
    .line 2775
    .line 2776
    move-result v0

    .line 2777
    invoke-virtual {v3}, Lpb5;->g0()Lat4;

    .line 2778
    .line 2779
    .line 2780
    move-result-object v15

    .line 2781
    invoke-virtual {v3}, Lpb5;->g()J

    .line 2782
    .line 2783
    .line 2784
    move-result-wide v16

    .line 2785
    const/16 v21, 0x0

    .line 2786
    .line 2787
    const/16 v22, 0x0

    .line 2788
    .line 2789
    const/16 v19, 0x0

    .line 2790
    .line 2791
    const/16 v20, 0x0

    .line 2792
    .line 2793
    move-object/from16 v18, v4

    .line 2794
    .line 2795
    invoke-virtual/range {v15 .. v22}, Lat4;->B0(JLjava/lang/String;ZZZZ)Lrs4;

    .line 2796
    .line 2797
    .line 2798
    move-result-object v4

    .line 2799
    move-object/from16 v5, v18

    .line 2800
    .line 2801
    if-eqz v0, :cond_47

    .line 2802
    .line 2803
    iget-wide v6, v4, Lrs4;->e:J

    .line 2804
    .line 2805
    invoke-virtual {v3}, Lpb5;->e0()Lds4;

    .line 2806
    .line 2807
    .line 2808
    move-result-object v0

    .line 2809
    sget-object v4, Le05;->p:Ld05;

    .line 2810
    .line 2811
    invoke-virtual {v0, v5, v4}, Lds4;->E(Ljava/lang/String;Ld05;)I

    .line 2812
    .line 2813
    .line 2814
    move-result v0

    .line 2815
    int-to-long v4, v0

    .line 2816
    cmp-long v0, v6, v4

    .line 2817
    .line 2818
    if-gez v0, :cond_47

    .line 2819
    .line 2820
    goto :goto_26

    .line 2821
    :cond_47
    move/from16 v29, v14

    .line 2822
    .line 2823
    :goto_26
    invoke-virtual {v1}, Lib0;->v()V

    .line 2824
    .line 2825
    .line 2826
    invoke-virtual {v1}, Lab5;->w()V

    .line 2827
    .line 2828
    .line 2829
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2830
    .line 2831
    .line 2832
    iget-object v0, v2, Lvt4;->a:Ljava/lang/String;

    .line 2833
    .line 2834
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2835
    .line 2836
    .line 2837
    iget-object v4, v1, Lta5;->b:Lpb5;

    .line 2838
    .line 2839
    invoke-virtual {v4}, Lpb5;->j0()Lub5;

    .line 2840
    .line 2841
    .line 2842
    move-result-object v4

    .line 2843
    invoke-virtual {v4, v2}, Lub5;->V(Lvt4;)Lu35;

    .line 2844
    .line 2845
    .line 2846
    move-result-object v4

    .line 2847
    invoke-virtual {v4}, Lsm4;->a()[B

    .line 2848
    .line 2849
    .line 2850
    move-result-object v4

    .line 2851
    new-instance v5, Landroid/content/ContentValues;

    .line 2852
    .line 2853
    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2854
    .line 2855
    .line 2856
    invoke-virtual {v5, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2857
    .line 2858
    .line 2859
    const-string v6, "name"

    .line 2860
    .line 2861
    iget-object v7, v2, Lvt4;->b:Ljava/lang/String;

    .line 2862
    .line 2863
    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2864
    .line 2865
    .line 2866
    const-string v6, "timestamp"

    .line 2867
    .line 2868
    iget-wide v12, v2, Lvt4;->d:J

    .line 2869
    .line 2870
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2871
    .line 2872
    .line 2873
    move-result-object v7

    .line 2874
    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2875
    .line 2876
    .line 2877
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2878
    .line 2879
    .line 2880
    move-result-object v6

    .line 2881
    invoke-virtual {v5, v11, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2882
    .line 2883
    .line 2884
    const-string v6, "data"

    .line 2885
    .line 2886
    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2887
    .line 2888
    .line 2889
    const-string v4, "realtime"

    .line 2890
    .line 2891
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2892
    .line 2893
    .line 2894
    move-result-object v6

    .line 2895
    invoke-virtual {v5, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2896
    .line 2897
    .line 2898
    const-string v4, "elapsed_time"

    .line 2899
    .line 2900
    iget-wide v6, v2, Lvt4;->e:J

    .line 2901
    .line 2902
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2903
    .line 2904
    .line 2905
    move-result-object v6

    .line 2906
    invoke-virtual {v5, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 2907
    .line 2908
    .line 2909
    :try_start_13
    invoke-virtual {v1}, Lat4;->m0()Landroid/database/sqlite/SQLiteDatabase;

    .line 2910
    .line 2911
    .line 2912
    move-result-object v4

    .line 2913
    move-object/from16 v12, v38

    .line 2914
    .line 2915
    const/4 v15, 0x0

    .line 2916
    invoke-virtual {v4, v12, v15, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2917
    .line 2918
    .line 2919
    move-result-wide v4

    .line 2920
    const-wide/16 v6, -0x1

    .line 2921
    .line 2922
    cmp-long v4, v4, v6

    .line 2923
    .line 2924
    if-nez v4, :cond_48

    .line 2925
    .line 2926
    iget-object v4, v1, Lib0;->a:Ljava/lang/Object;

    .line 2927
    .line 2928
    check-cast v4, Lr45;

    .line 2929
    .line 2930
    invoke-virtual {v4}, Lr45;->c()La25;

    .line 2931
    .line 2932
    .line 2933
    move-result-object v4

    .line 2934
    invoke-virtual {v4}, La25;->z()Lx15;

    .line 2935
    .line 2936
    .line 2937
    move-result-object v4

    .line 2938
    const-string v5, "Failed to insert raw event (got -1). appId"

    .line 2939
    .line 2940
    invoke-static {v0}, La25;->D(Ljava/lang/String;)Ly15;

    .line 2941
    .line 2942
    .line 2943
    move-result-object v0

    .line 2944
    invoke-virtual {v4, v0, v5}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_4
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 2945
    .line 2946
    .line 2947
    goto :goto_29

    .line 2948
    :catch_4
    move-exception v0

    .line 2949
    goto :goto_27

    .line 2950
    :cond_48
    const-wide/16 v12, 0x0

    .line 2951
    .line 2952
    :try_start_14
    iput-wide v12, v3, Lpb5;->o:J

    .line 2953
    .line 2954
    goto :goto_29

    .line 2955
    :goto_27
    iget-object v1, v1, Lib0;->a:Ljava/lang/Object;

    .line 2956
    .line 2957
    check-cast v1, Lr45;

    .line 2958
    .line 2959
    invoke-virtual {v1}, Lr45;->c()La25;

    .line 2960
    .line 2961
    .line 2962
    move-result-object v1

    .line 2963
    invoke-virtual {v1}, La25;->z()Lx15;

    .line 2964
    .line 2965
    .line 2966
    move-result-object v1

    .line 2967
    const-string v4, "Error storing raw event. appId"

    .line 2968
    .line 2969
    iget-object v2, v2, Lvt4;->a:Ljava/lang/String;

    .line 2970
    .line 2971
    invoke-static {v2}, La25;->D(Ljava/lang/String;)Ly15;

    .line 2972
    .line 2973
    .line 2974
    move-result-object v2

    .line 2975
    invoke-virtual {v1, v2, v0, v4}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 2976
    .line 2977
    .line 2978
    goto :goto_29

    .line 2979
    :catch_5
    move-exception v0

    .line 2980
    goto :goto_28

    .line 2981
    :catch_6
    move-exception v0

    .line 2982
    :try_start_15
    iget-object v1, v1, Lib0;->a:Ljava/lang/Object;

    .line 2983
    .line 2984
    check-cast v1, Lr45;

    .line 2985
    .line 2986
    invoke-virtual {v1}, Lr45;->c()La25;

    .line 2987
    .line 2988
    .line 2989
    move-result-object v1

    .line 2990
    invoke-virtual {v1}, La25;->z()Lx15;

    .line 2991
    .line 2992
    .line 2993
    move-result-object v1

    .line 2994
    const-string v4, "Error storing raw event metadata. appId"

    .line 2995
    .line 2996
    invoke-virtual {v2}, Lu45;->t()Ljava/lang/String;

    .line 2997
    .line 2998
    .line 2999
    move-result-object v2

    .line 3000
    invoke-static {v2}, La25;->D(Ljava/lang/String;)Ly15;

    .line 3001
    .line 3002
    .line 3003
    move-result-object v2

    .line 3004
    invoke-virtual {v1, v2, v0, v4}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 3005
    .line 3006
    .line 3007
    throw v0
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_5
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 3008
    :goto_28
    :try_start_16
    invoke-virtual {v3}, Lpb5;->c()La25;

    .line 3009
    .line 3010
    .line 3011
    move-result-object v1

    .line 3012
    invoke-virtual {v1}, La25;->z()Lx15;

    .line 3013
    .line 3014
    .line 3015
    move-result-object v1

    .line 3016
    const-string v2, "Data loss. Failed to insert raw event metadata. appId"

    .line 3017
    .line 3018
    invoke-virtual {v7}, Lq45;->n()Ljava/lang/String;

    .line 3019
    .line 3020
    .line 3021
    move-result-object v4

    .line 3022
    invoke-static {v4}, La25;->D(Ljava/lang/String;)Ly15;

    .line 3023
    .line 3024
    .line 3025
    move-result-object v4

    .line 3026
    invoke-virtual {v1, v4, v0, v2}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 3027
    .line 3028
    .line 3029
    :goto_29
    invoke-virtual {v3}, Lpb5;->g0()Lat4;

    .line 3030
    .line 3031
    .line 3032
    move-result-object v0

    .line 3033
    invoke-virtual {v0}, Lat4;->k0()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    .line 3034
    .line 3035
    .line 3036
    invoke-virtual {v3}, Lpb5;->g0()Lat4;

    .line 3037
    .line 3038
    .line 3039
    move-result-object v0

    .line 3040
    invoke-virtual {v0}, Lat4;->l0()V

    .line 3041
    .line 3042
    .line 3043
    invoke-virtual {v3}, Lpb5;->N()V

    .line 3044
    .line 3045
    .line 3046
    invoke-virtual {v3}, Lpb5;->c()La25;

    .line 3047
    .line 3048
    .line 3049
    move-result-object v0

    .line 3050
    invoke-virtual {v0}, La25;->C()Lx15;

    .line 3051
    .line 3052
    .line 3053
    move-result-object v0

    .line 3054
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 3055
    .line 3056
    .line 3057
    move-result-wide v1

    .line 3058
    sub-long v1, v1, v26

    .line 3059
    .line 3060
    const-wide/32 v3, 0x7a120

    .line 3061
    .line 3062
    .line 3063
    add-long/2addr v1, v3

    .line 3064
    const-wide/32 v3, 0xf4240

    .line 3065
    .line 3066
    .line 3067
    div-long/2addr v1, v3

    .line 3068
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 3069
    .line 3070
    .line 3071
    move-result-object v1

    .line 3072
    const-string v2, "Background event processing time, ms"

    .line 3073
    .line 3074
    invoke-virtual {v0, v1, v2}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3075
    .line 3076
    .line 3077
    return-void

    .line 3078
    :goto_2a
    invoke-virtual {v3}, Lpb5;->g0()Lat4;

    .line 3079
    .line 3080
    .line 3081
    move-result-object v1

    .line 3082
    invoke-virtual {v1}, Lat4;->l0()V

    .line 3083
    .line 3084
    .line 3085
    throw v0
.end method

.method public final l0()V
    .locals 0

    .line 1
    iget-object p0, p0, Lpb5;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string p0, "UploadController is not initialized"

    .line 11
    .line 12
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final m(Lm25;Lq45;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-virtual {v0}, Lpb5;->d()Lj45;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Lj45;->v()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lpb5;->l0()V

    .line 13
    .line 14
    .line 15
    iget-object v2, v1, Lpn4;->o:Lrn4;

    .line 16
    .line 17
    check-cast v2, Lu45;

    .line 18
    .line 19
    invoke-virtual {v2}, Lu45;->F0()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    new-instance v3, Ljava/util/EnumMap;

    .line 24
    .line 25
    const-class v4, Lx55;

    .line 26
    .line 27
    invoke-direct {v3, v4}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    invoke-static {}, Lx55;->values()[Lx55;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    array-length v5, v5

    .line 39
    sget-object v6, Lgs4;->o:Lgs4;

    .line 40
    .line 41
    const/4 v7, 0x0

    .line 42
    if-lt v4, v5, :cond_4

    .line 43
    .line 44
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    const/16 v5, 0x31

    .line 49
    .line 50
    if-eq v4, v5, :cond_0

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_0
    invoke-static {}, Lx55;->values()[Lx55;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    array-length v5, v4

    .line 58
    move v9, v7

    .line 59
    const/4 v10, 0x1

    .line 60
    :goto_0
    if-ge v9, v5, :cond_3

    .line 61
    .line 62
    aget-object v11, v4, v9

    .line 63
    .line 64
    add-int/lit8 v12, v10, 0x1

    .line 65
    .line 66
    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    .line 67
    .line 68
    .line 69
    move-result v10

    .line 70
    invoke-static {}, Lgs4;->values()[Lgs4;

    .line 71
    .line 72
    .line 73
    move-result-object v13

    .line 74
    array-length v14, v13

    .line 75
    move v15, v7

    .line 76
    :goto_1
    if-ge v15, v14, :cond_2

    .line 77
    .line 78
    aget-object v7, v13, v15

    .line 79
    .line 80
    iget-char v8, v7, Lgs4;->n:C

    .line 81
    .line 82
    if-ne v8, v10, :cond_1

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_1
    add-int/lit8 v15, v15, 0x1

    .line 86
    .line 87
    const/4 v7, 0x0

    .line 88
    goto :goto_1

    .line 89
    :cond_2
    move-object v7, v6

    .line 90
    :goto_2
    invoke-virtual {v3, v11, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    add-int/lit8 v9, v9, 0x1

    .line 94
    .line 95
    move v10, v12

    .line 96
    const/4 v7, 0x0

    .line 97
    goto :goto_0

    .line 98
    :cond_3
    new-instance v2, Ldd1;

    .line 99
    .line 100
    invoke-direct {v2, v3}, Ldd1;-><init>(Ljava/util/EnumMap;)V

    .line 101
    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_4
    :goto_3
    new-instance v2, Ldd1;

    .line 105
    .line 106
    const/16 v3, 0x1d

    .line 107
    .line 108
    invoke-direct {v2, v3}, Ldd1;-><init>(I)V

    .line 109
    .line 110
    .line 111
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lm25;->E()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-virtual {v0}, Lpb5;->d()Lj45;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-virtual {v4}, Lj45;->v()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Lpb5;->l0()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v3}, Lpb5;->a(Ljava/lang/String;)Ly55;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    iget-object v4, v3, Ly55;->a:Ljava/util/EnumMap;

    .line 130
    .line 131
    sget-object v5, Lx55;->o:Lx55;

    .line 132
    .line 133
    invoke-virtual {v4, v5}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    check-cast v7, Lu55;

    .line 138
    .line 139
    sget-object v8, Lu55;->o:Lu55;

    .line 140
    .line 141
    if-nez v7, :cond_5

    .line 142
    .line 143
    move-object v7, v8

    .line 144
    :cond_5
    iget v3, v3, Ly55;->b:I

    .line 145
    .line 146
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 147
    .line 148
    .line 149
    move-result v7

    .line 150
    sget-object v9, Lgs4;->v:Lgs4;

    .line 151
    .line 152
    sget-object v10, Lgs4;->w:Lgs4;

    .line 153
    .line 154
    const/4 v11, 0x3

    .line 155
    const/4 v12, 0x2

    .line 156
    const/4 v13, 0x1

    .line 157
    if-eq v7, v13, :cond_7

    .line 158
    .line 159
    if-eq v7, v12, :cond_6

    .line 160
    .line 161
    if-eq v7, v11, :cond_6

    .line 162
    .line 163
    invoke-virtual {v2, v5, v10}, Ldd1;->w(Lx55;Lgs4;)V

    .line 164
    .line 165
    .line 166
    goto :goto_5

    .line 167
    :cond_6
    invoke-virtual {v2, v5, v3}, Ldd1;->v(Lx55;I)V

    .line 168
    .line 169
    .line 170
    goto :goto_5

    .line 171
    :cond_7
    invoke-virtual {v2, v5, v9}, Ldd1;->w(Lx55;Lgs4;)V

    .line 172
    .line 173
    .line 174
    :goto_5
    sget-object v5, Lx55;->p:Lx55;

    .line 175
    .line 176
    invoke-virtual {v4, v5}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    check-cast v4, Lu55;

    .line 181
    .line 182
    if-nez v4, :cond_8

    .line 183
    .line 184
    goto :goto_6

    .line 185
    :cond_8
    move-object v8, v4

    .line 186
    :goto_6
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    const/4 v13, 0x1

    .line 191
    if-eq v4, v13, :cond_a

    .line 192
    .line 193
    if-eq v4, v12, :cond_9

    .line 194
    .line 195
    if-eq v4, v11, :cond_9

    .line 196
    .line 197
    invoke-virtual {v2, v5, v10}, Ldd1;->w(Lx55;Lgs4;)V

    .line 198
    .line 199
    .line 200
    goto :goto_7

    .line 201
    :cond_9
    invoke-virtual {v2, v5, v3}, Ldd1;->v(Lx55;I)V

    .line 202
    .line 203
    .line 204
    goto :goto_7

    .line 205
    :cond_a
    invoke-virtual {v2, v5, v9}, Ldd1;->w(Lx55;Lgs4;)V

    .line 206
    .line 207
    .line 208
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lm25;->E()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    invoke-virtual {v0}, Lpb5;->d()Lj45;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    invoke-virtual {v4}, Lj45;->v()V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0}, Lpb5;->l0()V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0, v3}, Lpb5;->o0(Ljava/lang/String;)Lrt4;

    .line 223
    .line 224
    .line 225
    move-result-object v4

    .line 226
    invoke-virtual {v0, v3}, Lpb5;->a(Ljava/lang/String;)Ly55;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    invoke-virtual {v0, v3, v4, v5, v2}, Lpb5;->q0(Ljava/lang/String;Lrt4;Ly55;Ldd1;)Lrt4;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    iget-object v4, v3, Lrt4;->d:Ljava/lang/String;

    .line 235
    .line 236
    iget-object v3, v3, Lrt4;->c:Ljava/lang/Boolean;

    .line 237
    .line 238
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    check-cast v3, Ljava/lang/Boolean;

    .line 243
    .line 244
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 245
    .line 246
    .line 247
    move-result v3

    .line 248
    invoke-virtual {v1}, Lpn4;->b()V

    .line 249
    .line 250
    .line 251
    iget-object v5, v1, Lpn4;->o:Lrn4;

    .line 252
    .line 253
    check-cast v5, Lu45;

    .line 254
    .line 255
    invoke-virtual {v5, v3}, Lu45;->j1(Z)V

    .line 256
    .line 257
    .line 258
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 259
    .line 260
    .line 261
    move-result v3

    .line 262
    if-nez v3, :cond_b

    .line 263
    .line 264
    invoke-virtual {v1}, Lpn4;->b()V

    .line 265
    .line 266
    .line 267
    iget-object v3, v1, Lpn4;->o:Lrn4;

    .line 268
    .line 269
    check-cast v3, Lu45;

    .line 270
    .line 271
    invoke-virtual {v3, v4}, Lu45;->k1(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    :cond_b
    invoke-virtual {v0}, Lpb5;->d()Lj45;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    invoke-virtual {v3}, Lj45;->v()V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v0}, Lpb5;->l0()V

    .line 282
    .line 283
    .line 284
    iget-object v3, v1, Lpn4;->o:Lrn4;

    .line 285
    .line 286
    check-cast v3, Lu45;

    .line 287
    .line 288
    invoke-virtual {v3}, Lu45;->Z1()Ldo4;

    .line 289
    .line 290
    .line 291
    move-result-object v3

    .line 292
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    :cond_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 301
    .line 302
    .line 303
    move-result v4

    .line 304
    const-string v5, "_npa"

    .line 305
    .line 306
    if-eqz v4, :cond_d

    .line 307
    .line 308
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v4

    .line 312
    check-cast v4, Lh55;

    .line 313
    .line 314
    invoke-virtual {v4}, Lh55;->v()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v7

    .line 318
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    move-result v7

    .line 322
    if-eqz v7, :cond_c

    .line 323
    .line 324
    goto :goto_8

    .line 325
    :cond_d
    const/4 v4, 0x0

    .line 326
    :goto_8
    if-eqz v4, :cond_16

    .line 327
    .line 328
    iget-object v3, v2, Ldd1;->o:Ljava/lang/Object;

    .line 329
    .line 330
    check-cast v3, Ljava/util/EnumMap;

    .line 331
    .line 332
    sget-object v7, Lx55;->r:Lx55;

    .line 333
    .line 334
    invoke-virtual {v3, v7}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v3

    .line 338
    check-cast v3, Lgs4;

    .line 339
    .line 340
    if-nez v3, :cond_e

    .line 341
    .line 342
    move-object v3, v6

    .line 343
    :cond_e
    if-eq v3, v6, :cond_f

    .line 344
    .line 345
    goto/16 :goto_a

    .line 346
    .line 347
    :cond_f
    iget-object v3, v0, Lpb5;->c:Lat4;

    .line 348
    .line 349
    invoke-static {v3}, Lpb5;->T(Lab5;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual/range {p1 .. p1}, Lm25;->E()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v6

    .line 356
    invoke-virtual {v3, v6, v5}, Lat4;->r0(Ljava/lang/String;Ljava/lang/String;)Lxb5;

    .line 357
    .line 358
    .line 359
    move-result-object v3

    .line 360
    sget-object v5, Lgs4;->r:Lgs4;

    .line 361
    .line 362
    sget-object v6, Lgs4;->t:Lgs4;

    .line 363
    .line 364
    if-eqz v3, :cond_12

    .line 365
    .line 366
    iget-object v3, v3, Lxb5;->b:Ljava/lang/String;

    .line 367
    .line 368
    const-string v4, "tcf"

    .line 369
    .line 370
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 371
    .line 372
    .line 373
    move-result v4

    .line 374
    if-eqz v4, :cond_10

    .line 375
    .line 376
    sget-object v3, Lgs4;->u:Lgs4;

    .line 377
    .line 378
    invoke-virtual {v2, v7, v3}, Ldd1;->w(Lx55;Lgs4;)V

    .line 379
    .line 380
    .line 381
    goto/16 :goto_a

    .line 382
    .line 383
    :cond_10
    const-string v4, "app"

    .line 384
    .line 385
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    move-result v3

    .line 389
    if-eqz v3, :cond_11

    .line 390
    .line 391
    invoke-virtual {v2, v7, v6}, Ldd1;->w(Lx55;Lgs4;)V

    .line 392
    .line 393
    .line 394
    goto/16 :goto_a

    .line 395
    .line 396
    :cond_11
    invoke-virtual {v2, v7, v5}, Ldd1;->w(Lx55;Lgs4;)V

    .line 397
    .line 398
    .line 399
    goto/16 :goto_a

    .line 400
    .line 401
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lm25;->x()Ljava/lang/Boolean;

    .line 402
    .line 403
    .line 404
    move-result-object v3

    .line 405
    if-eqz v3, :cond_15

    .line 406
    .line 407
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 408
    .line 409
    .line 410
    move-result v8

    .line 411
    if-eqz v8, :cond_13

    .line 412
    .line 413
    invoke-virtual {v4}, Lh55;->z()J

    .line 414
    .line 415
    .line 416
    move-result-wide v8

    .line 417
    const-wide/16 v10, 0x1

    .line 418
    .line 419
    cmp-long v8, v8, v10

    .line 420
    .line 421
    if-nez v8, :cond_15

    .line 422
    .line 423
    :cond_13
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 424
    .line 425
    .line 426
    move-result v3

    .line 427
    if-nez v3, :cond_14

    .line 428
    .line 429
    invoke-virtual {v4}, Lh55;->z()J

    .line 430
    .line 431
    .line 432
    move-result-wide v3

    .line 433
    const-wide/16 v8, 0x0

    .line 434
    .line 435
    cmp-long v3, v3, v8

    .line 436
    .line 437
    if-eqz v3, :cond_14

    .line 438
    .line 439
    goto :goto_9

    .line 440
    :cond_14
    invoke-virtual {v2, v7, v5}, Ldd1;->w(Lx55;Lgs4;)V

    .line 441
    .line 442
    .line 443
    goto :goto_a

    .line 444
    :cond_15
    :goto_9
    invoke-virtual {v2, v7, v6}, Ldd1;->w(Lx55;Lgs4;)V

    .line 445
    .line 446
    .line 447
    goto :goto_a

    .line 448
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lm25;->E()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v3

    .line 452
    invoke-virtual {v0, v3, v2}, Lpb5;->F(Ljava/lang/String;Ldd1;)I

    .line 453
    .line 454
    .line 455
    move-result v3

    .line 456
    invoke-static {}, Lh55;->E()Lg55;

    .line 457
    .line 458
    .line 459
    move-result-object v4

    .line 460
    invoke-virtual {v4}, Lpn4;->b()V

    .line 461
    .line 462
    .line 463
    iget-object v6, v4, Lpn4;->o:Lrn4;

    .line 464
    .line 465
    check-cast v6, Lh55;

    .line 466
    .line 467
    invoke-virtual {v6, v5}, Lh55;->G(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v0}, Lpb5;->f()Lcom/google/android/gms/common/util/Clock;

    .line 471
    .line 472
    .line 473
    move-result-object v5

    .line 474
    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 475
    .line 476
    .line 477
    move-result-wide v5

    .line 478
    invoke-virtual {v4}, Lpn4;->b()V

    .line 479
    .line 480
    .line 481
    iget-object v7, v4, Lpn4;->o:Lrn4;

    .line 482
    .line 483
    check-cast v7, Lh55;

    .line 484
    .line 485
    invoke-virtual {v7, v5, v6}, Lh55;->F(J)V

    .line 486
    .line 487
    .line 488
    int-to-long v5, v3

    .line 489
    invoke-virtual {v4}, Lpn4;->b()V

    .line 490
    .line 491
    .line 492
    iget-object v7, v4, Lpn4;->o:Lrn4;

    .line 493
    .line 494
    check-cast v7, Lh55;

    .line 495
    .line 496
    invoke-virtual {v7, v5, v6}, Lh55;->J(J)V

    .line 497
    .line 498
    .line 499
    invoke-virtual {v4}, Lpn4;->d()Lrn4;

    .line 500
    .line 501
    .line 502
    move-result-object v4

    .line 503
    check-cast v4, Lh55;

    .line 504
    .line 505
    invoke-virtual {v1}, Lpn4;->b()V

    .line 506
    .line 507
    .line 508
    iget-object v5, v1, Lpn4;->o:Lrn4;

    .line 509
    .line 510
    check-cast v5, Lu45;

    .line 511
    .line 512
    invoke-virtual {v5, v4}, Lu45;->h0(Lh55;)V

    .line 513
    .line 514
    .line 515
    invoke-virtual {v0}, Lpb5;->c()La25;

    .line 516
    .line 517
    .line 518
    move-result-object v4

    .line 519
    iget-object v4, v4, La25;->n:Lx15;

    .line 520
    .line 521
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 522
    .line 523
    .line 524
    move-result-object v3

    .line 525
    const-string v5, "Setting user property"

    .line 526
    .line 527
    const-string v6, "non_personalized_ads(_npa)"

    .line 528
    .line 529
    invoke-virtual {v4, v6, v3, v5}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 530
    .line 531
    .line 532
    :goto_a
    invoke-virtual {v2}, Ldd1;->toString()Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v2

    .line 536
    invoke-virtual {v1}, Lpn4;->b()V

    .line 537
    .line 538
    .line 539
    iget-object v3, v1, Lpn4;->o:Lrn4;

    .line 540
    .line 541
    check-cast v3, Lu45;

    .line 542
    .line 543
    invoke-virtual {v3, v2}, Lu45;->i1(Ljava/lang/String;)V

    .line 544
    .line 545
    .line 546
    invoke-virtual/range {p1 .. p1}, Lm25;->E()Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v2

    .line 550
    iget-object v0, v0, Lpb5;->a:Lw35;

    .line 551
    .line 552
    invoke-virtual {v0}, Lib0;->v()V

    .line 553
    .line 554
    .line 555
    invoke-virtual {v0, v2}, Lw35;->B(Ljava/lang/String;)V

    .line 556
    .line 557
    .line 558
    invoke-virtual {v0, v2}, Lw35;->R(Ljava/lang/String;)Lx05;

    .line 559
    .line 560
    .line 561
    move-result-object v0

    .line 562
    if-nez v0, :cond_17

    .line 563
    .line 564
    goto :goto_b

    .line 565
    :cond_17
    invoke-virtual {v0}, Lx05;->w()Z

    .line 566
    .line 567
    .line 568
    move-result v2

    .line 569
    if-eqz v2, :cond_19

    .line 570
    .line 571
    invoke-virtual {v0}, Lx05;->x()Z

    .line 572
    .line 573
    .line 574
    move-result v0

    .line 575
    if-eqz v0, :cond_18

    .line 576
    .line 577
    goto :goto_b

    .line 578
    :cond_18
    const/4 v13, 0x0

    .line 579
    goto :goto_c

    .line 580
    :cond_19
    :goto_b
    const/4 v13, 0x1

    .line 581
    :goto_c
    invoke-virtual {v1}, Lq45;->T()Ljava/util/List;

    .line 582
    .line 583
    .line 584
    move-result-object v0

    .line 585
    const/4 v2, 0x0

    .line 586
    :goto_d
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 587
    .line 588
    .line 589
    move-result v3

    .line 590
    if-ge v2, v3, :cond_21

    .line 591
    .line 592
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-result-object v3

    .line 596
    check-cast v3, Lu35;

    .line 597
    .line 598
    invoke-virtual {v3}, Lu35;->y()Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object v3

    .line 602
    const-string v4, "_tcf"

    .line 603
    .line 604
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 605
    .line 606
    .line 607
    move-result v3

    .line 608
    if-eqz v3, :cond_20

    .line 609
    .line 610
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 611
    .line 612
    .line 613
    move-result-object v0

    .line 614
    check-cast v0, Lu35;

    .line 615
    .line 616
    invoke-virtual {v0}, Lrn4;->k()Lpn4;

    .line 617
    .line 618
    .line 619
    move-result-object v0

    .line 620
    check-cast v0, Ls35;

    .line 621
    .line 622
    invoke-virtual {v0}, Ls35;->g()Ljava/util/List;

    .line 623
    .line 624
    .line 625
    move-result-object v3

    .line 626
    const/4 v4, 0x0

    .line 627
    :goto_e
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 628
    .line 629
    .line 630
    move-result v5

    .line 631
    if-ge v4, v5, :cond_1f

    .line 632
    .line 633
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 634
    .line 635
    .line 636
    move-result-object v5

    .line 637
    check-cast v5, Lc45;

    .line 638
    .line 639
    invoke-virtual {v5}, Lc45;->u()Ljava/lang/String;

    .line 640
    .line 641
    .line 642
    move-result-object v5

    .line 643
    const-string v6, "_tcfd"

    .line 644
    .line 645
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 646
    .line 647
    .line 648
    move-result v5

    .line 649
    if-eqz v5, :cond_1e

    .line 650
    .line 651
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 652
    .line 653
    .line 654
    move-result-object v3

    .line 655
    check-cast v3, Lc45;

    .line 656
    .line 657
    invoke-virtual {v3}, Lc45;->w()Ljava/lang/String;

    .line 658
    .line 659
    .line 660
    move-result-object v3

    .line 661
    if-eqz v13, :cond_1d

    .line 662
    .line 663
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 664
    .line 665
    .line 666
    move-result v5

    .line 667
    const/4 v7, 0x4

    .line 668
    if-gt v5, v7, :cond_1a

    .line 669
    .line 670
    goto :goto_12

    .line 671
    :cond_1a
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    .line 672
    .line 673
    .line 674
    move-result-object v3

    .line 675
    const/4 v13, 0x1

    .line 676
    :goto_f
    const/16 v5, 0x40

    .line 677
    .line 678
    const-string v8, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-_"

    .line 679
    .line 680
    if-ge v13, v5, :cond_1c

    .line 681
    .line 682
    aget-char v5, v3, v7

    .line 683
    .line 684
    invoke-virtual {v8, v13}, Ljava/lang/String;->charAt(I)C

    .line 685
    .line 686
    .line 687
    move-result v9

    .line 688
    if-ne v5, v9, :cond_1b

    .line 689
    .line 690
    :goto_10
    const/16 v16, 0x1

    .line 691
    .line 692
    goto :goto_11

    .line 693
    :cond_1b
    add-int/lit8 v13, v13, 0x1

    .line 694
    .line 695
    goto :goto_f

    .line 696
    :cond_1c
    const/4 v13, 0x0

    .line 697
    goto :goto_10

    .line 698
    :goto_11
    or-int/lit8 v5, v13, 0x1

    .line 699
    .line 700
    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    .line 701
    .line 702
    .line 703
    move-result v5

    .line 704
    aput-char v5, v3, v7

    .line 705
    .line 706
    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    .line 707
    .line 708
    .line 709
    move-result-object v3

    .line 710
    :cond_1d
    :goto_12
    invoke-static {}, Lc45;->F()La45;

    .line 711
    .line 712
    .line 713
    move-result-object v5

    .line 714
    invoke-virtual {v5, v6}, La45;->g(Ljava/lang/String;)V

    .line 715
    .line 716
    .line 717
    invoke-virtual {v5, v3}, La45;->h(Ljava/lang/String;)V

    .line 718
    .line 719
    .line 720
    invoke-virtual {v0}, Lpn4;->b()V

    .line 721
    .line 722
    .line 723
    iget-object v3, v0, Lpn4;->o:Lrn4;

    .line 724
    .line 725
    check-cast v3, Lu35;

    .line 726
    .line 727
    invoke-virtual {v5}, Lpn4;->d()Lrn4;

    .line 728
    .line 729
    .line 730
    move-result-object v5

    .line 731
    check-cast v5, Lc45;

    .line 732
    .line 733
    invoke-virtual {v3, v4, v5}, Lu35;->K(ILc45;)V

    .line 734
    .line 735
    .line 736
    goto :goto_13

    .line 737
    :cond_1e
    const/16 v16, 0x1

    .line 738
    .line 739
    add-int/lit8 v4, v4, 0x1

    .line 740
    .line 741
    goto :goto_e

    .line 742
    :cond_1f
    :goto_13
    invoke-virtual {v1, v2, v0}, Lq45;->V(ILs35;)V

    .line 743
    .line 744
    .line 745
    return-void

    .line 746
    :cond_20
    const/16 v16, 0x1

    .line 747
    .line 748
    add-int/lit8 v2, v2, 0x1

    .line 749
    .line 750
    goto/16 :goto_d

    .line 751
    .line 752
    :cond_21
    return-void
.end method

.method public final m0(Lvc5;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lpb5;->d()Lj45;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lj45;->v()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lpb5;->l0()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p1, Lvc5;->n:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    iget v1, p1, Lvc5;->K:I

    .line 17
    .line 18
    iget-object p1, p1, Lvc5;->F:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v1, p1}, Ly55;->c(ILjava/lang/String;)Ly55;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p0, v0}, Lpb5;->a(Ljava/lang/String;)Ly55;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lpb5;->c()La25;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget-object v1, v1, La25;->n:Lx15;

    .line 32
    .line 33
    const-string v2, "Setting storage consent for package"

    .line 34
    .line 35
    invoke-virtual {v1, v0, p1, v2}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lpb5;->d()Lj45;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Lj45;->v()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lpb5;->l0()V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lpb5;->B:Ljava/util/HashMap;

    .line 49
    .line 50
    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    iget-object p0, p0, Lpb5;->c:Lat4;

    .line 54
    .line 55
    invoke-static {p0}, Lpb5;->T(Lab5;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v0, p1}, Lat4;->b0(Ljava/lang/String;Ly55;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final n(Lm25;Lq45;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual {v0}, Lpb5;->d()Lj45;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-virtual {v3}, Lj45;->v()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lpb5;->l0()V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lo25;->Y()Le25;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    iget-object v4, v1, Lm25;->a:Lr45;

    .line 22
    .line 23
    iget-object v5, v4, Lr45;->g:Lj45;

    .line 24
    .line 25
    invoke-static {v5}, Lr45;->l(Lq55;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v5}, Lj45;->v()V

    .line 29
    .line 30
    .line 31
    iget-object v5, v1, Lm25;->H:[B

    .line 32
    .line 33
    if-eqz v5, :cond_0

    .line 34
    .line 35
    :try_start_0
    invoke-static {v3, v5}, Lub5;->g0(Lpn4;[B)Lpn4;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    check-cast v5, Le25;
    :try_end_0
    .catch Lfo4; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    move-object v3, v5

    .line 42
    goto :goto_0

    .line 43
    :catch_0
    invoke-virtual {v0}, Lpb5;->c()La25;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    iget-object v5, v5, La25;->i:Lx15;

    .line 48
    .line 49
    invoke-virtual {v1}, Lm25;->E()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    invoke-static {v6}, La25;->D(Ljava/lang/String;)Ly15;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    const-string v7, "Failed to parse locally stored ad campaign info. appId"

    .line 58
    .line 59
    invoke-virtual {v5, v6, v7}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_0
    :goto_0
    invoke-virtual {v2}, Lq45;->T()Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    const-string v7, "deep_link_url"

    .line 75
    .line 76
    const-string v8, "_cmp"

    .line 77
    .line 78
    const/4 v9, 0x0

    .line 79
    if-eqz v6, :cond_1a

    .line 80
    .line 81
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    check-cast v6, Lu35;

    .line 86
    .line 87
    invoke-virtual {v6}, Lu35;->y()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v10

    .line 91
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v8

    .line 95
    if-eqz v8, :cond_1

    .line 96
    .line 97
    const-string v8, "gclid"

    .line 98
    .line 99
    invoke-static {v8, v6}, Lub5;->F(Ljava/lang/String;Lu35;)Lc45;

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    if-nez v8, :cond_2

    .line 104
    .line 105
    move-object v8, v9

    .line 106
    goto :goto_2

    .line 107
    :cond_2
    invoke-static {v8}, Lub5;->N(Lc45;)Ljava/io/Serializable;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    :goto_2
    const-string v10, ""

    .line 112
    .line 113
    if-nez v8, :cond_3

    .line 114
    .line 115
    move-object v8, v10

    .line 116
    :cond_3
    check-cast v8, Ljava/lang/String;

    .line 117
    .line 118
    const-string v11, "gbraid"

    .line 119
    .line 120
    invoke-static {v11, v6}, Lub5;->F(Ljava/lang/String;Lu35;)Lc45;

    .line 121
    .line 122
    .line 123
    move-result-object v11

    .line 124
    if-nez v11, :cond_4

    .line 125
    .line 126
    move-object v11, v9

    .line 127
    goto :goto_3

    .line 128
    :cond_4
    invoke-static {v11}, Lub5;->N(Lc45;)Ljava/io/Serializable;

    .line 129
    .line 130
    .line 131
    move-result-object v11

    .line 132
    :goto_3
    if-nez v11, :cond_5

    .line 133
    .line 134
    move-object v11, v10

    .line 135
    :cond_5
    check-cast v11, Ljava/lang/String;

    .line 136
    .line 137
    const-string v12, "gad_source"

    .line 138
    .line 139
    invoke-static {v12, v6}, Lub5;->F(Ljava/lang/String;Lu35;)Lc45;

    .line 140
    .line 141
    .line 142
    move-result-object v12

    .line 143
    if-nez v12, :cond_6

    .line 144
    .line 145
    move-object v12, v9

    .line 146
    goto :goto_4

    .line 147
    :cond_6
    invoke-static {v12}, Lub5;->N(Lc45;)Ljava/io/Serializable;

    .line 148
    .line 149
    .line 150
    move-result-object v12

    .line 151
    :goto_4
    if-nez v12, :cond_7

    .line 152
    .line 153
    move-object v12, v10

    .line 154
    :cond_7
    check-cast v12, Ljava/lang/String;

    .line 155
    .line 156
    invoke-static {v7, v6}, Lub5;->F(Ljava/lang/String;Lu35;)Lc45;

    .line 157
    .line 158
    .line 159
    move-result-object v7

    .line 160
    if-nez v7, :cond_8

    .line 161
    .line 162
    move-object v7, v9

    .line 163
    goto :goto_5

    .line 164
    :cond_8
    invoke-static {v7}, Lub5;->N(Lc45;)Ljava/io/Serializable;

    .line 165
    .line 166
    .line 167
    move-result-object v7

    .line 168
    :goto_5
    if-nez v7, :cond_9

    .line 169
    .line 170
    goto :goto_6

    .line 171
    :cond_9
    move-object v10, v7

    .line 172
    :goto_6
    check-cast v10, Ljava/lang/String;

    .line 173
    .line 174
    sget-object v7, Le05;->b1:Ld05;

    .line 175
    .line 176
    invoke-virtual {v7, v9}, Ld05;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v7

    .line 180
    check-cast v7, Ljava/lang/String;

    .line 181
    .line 182
    const-string v13, ","

    .line 183
    .line 184
    invoke-virtual {v7, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v7

    .line 188
    invoke-virtual {v0}, Lpb5;->j0()Lub5;

    .line 189
    .line 190
    .line 191
    new-instance v13, Ljava/util/HashMap;

    .line 192
    .line 193
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v6}, Lu35;->v()Ljava/util/List;

    .line 197
    .line 198
    .line 199
    move-result-object v14

    .line 200
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 201
    .line 202
    .line 203
    move-result-object v14

    .line 204
    :goto_7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 205
    .line 206
    .line 207
    move-result v15

    .line 208
    if-eqz v15, :cond_b

    .line 209
    .line 210
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v15

    .line 214
    check-cast v15, Lc45;

    .line 215
    .line 216
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 217
    .line 218
    .line 219
    move-result-object v9

    .line 220
    move-object/from16 v16, v5

    .line 221
    .line 222
    invoke-virtual {v15}, Lc45;->u()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v5

    .line 226
    invoke-interface {v9, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v5

    .line 230
    if-eqz v5, :cond_a

    .line 231
    .line 232
    invoke-static {v15}, Lub5;->N(Lc45;)Ljava/io/Serializable;

    .line 233
    .line 234
    .line 235
    move-result-object v5

    .line 236
    if-eqz v5, :cond_a

    .line 237
    .line 238
    invoke-virtual {v15}, Lc45;->u()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v9

    .line 242
    invoke-virtual {v13, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    :cond_a
    move-object/from16 v5, v16

    .line 246
    .line 247
    const/4 v9, 0x0

    .line 248
    goto :goto_7

    .line 249
    :cond_b
    move-object/from16 v16, v5

    .line 250
    .line 251
    invoke-virtual {v13}, Ljava/util/HashMap;->isEmpty()Z

    .line 252
    .line 253
    .line 254
    move-result v5

    .line 255
    if-nez v5, :cond_13

    .line 256
    .line 257
    const-wide/16 v13, 0x0

    .line 258
    .line 259
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 260
    .line 261
    .line 262
    move-result-object v5

    .line 263
    const-string v7, "click_timestamp"

    .line 264
    .line 265
    invoke-static {v7, v6}, Lub5;->F(Ljava/lang/String;Lu35;)Lc45;

    .line 266
    .line 267
    .line 268
    move-result-object v7

    .line 269
    if-nez v7, :cond_c

    .line 270
    .line 271
    const/4 v7, 0x0

    .line 272
    goto :goto_8

    .line 273
    :cond_c
    invoke-static {v7}, Lub5;->N(Lc45;)Ljava/io/Serializable;

    .line 274
    .line 275
    .line 276
    move-result-object v7

    .line 277
    :goto_8
    if-nez v7, :cond_d

    .line 278
    .line 279
    goto :goto_9

    .line 280
    :cond_d
    move-object v5, v7

    .line 281
    :goto_9
    check-cast v5, Ljava/lang/Long;

    .line 282
    .line 283
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 284
    .line 285
    .line 286
    move-result-wide v17

    .line 287
    cmp-long v5, v17, v13

    .line 288
    .line 289
    if-gtz v5, :cond_e

    .line 290
    .line 291
    invoke-virtual {v6}, Lu35;->A()J

    .line 292
    .line 293
    .line 294
    move-result-wide v17

    .line 295
    :cond_e
    move-wide/from16 v13, v17

    .line 296
    .line 297
    const-string v5, "_cis"

    .line 298
    .line 299
    invoke-static {v5, v6}, Lub5;->F(Ljava/lang/String;Lu35;)Lc45;

    .line 300
    .line 301
    .line 302
    move-result-object v5

    .line 303
    if-nez v5, :cond_f

    .line 304
    .line 305
    const/4 v5, 0x0

    .line 306
    goto :goto_a

    .line 307
    :cond_f
    invoke-static {v5}, Lub5;->N(Lc45;)Ljava/io/Serializable;

    .line 308
    .line 309
    .line 310
    move-result-object v5

    .line 311
    :goto_a
    const-string v7, "referrer API v2"

    .line 312
    .line 313
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result v5

    .line 317
    if-eqz v5, :cond_14

    .line 318
    .line 319
    iget-object v5, v3, Lpn4;->o:Lrn4;

    .line 320
    .line 321
    check-cast v5, Lo25;

    .line 322
    .line 323
    invoke-virtual {v5}, Lo25;->V()J

    .line 324
    .line 325
    .line 326
    move-result-wide v9

    .line 327
    cmp-long v5, v13, v9

    .line 328
    .line 329
    if-lez v5, :cond_13

    .line 330
    .line 331
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 332
    .line 333
    .line 334
    move-result v5

    .line 335
    if-eqz v5, :cond_10

    .line 336
    .line 337
    invoke-virtual {v3}, Lpn4;->b()V

    .line 338
    .line 339
    .line 340
    iget-object v5, v3, Lpn4;->o:Lrn4;

    .line 341
    .line 342
    check-cast v5, Lo25;

    .line 343
    .line 344
    invoke-virtual {v5}, Lo25;->w()V

    .line 345
    .line 346
    .line 347
    goto :goto_b

    .line 348
    :cond_10
    invoke-virtual {v3}, Lpn4;->b()V

    .line 349
    .line 350
    .line 351
    iget-object v5, v3, Lpn4;->o:Lrn4;

    .line 352
    .line 353
    check-cast v5, Lo25;

    .line 354
    .line 355
    invoke-virtual {v5, v8}, Lo25;->v(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    :goto_b
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 359
    .line 360
    .line 361
    move-result v5

    .line 362
    if-eqz v5, :cond_11

    .line 363
    .line 364
    invoke-virtual {v3}, Lpn4;->b()V

    .line 365
    .line 366
    .line 367
    iget-object v5, v3, Lpn4;->o:Lrn4;

    .line 368
    .line 369
    check-cast v5, Lo25;

    .line 370
    .line 371
    invoke-virtual {v5}, Lo25;->y()V

    .line 372
    .line 373
    .line 374
    goto :goto_c

    .line 375
    :cond_11
    invoke-virtual {v3}, Lpn4;->b()V

    .line 376
    .line 377
    .line 378
    iget-object v5, v3, Lpn4;->o:Lrn4;

    .line 379
    .line 380
    check-cast v5, Lo25;

    .line 381
    .line 382
    invoke-virtual {v5, v11}, Lo25;->x(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    :goto_c
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    .line 386
    .line 387
    .line 388
    move-result v5

    .line 389
    if-eqz v5, :cond_12

    .line 390
    .line 391
    invoke-virtual {v3}, Lpn4;->b()V

    .line 392
    .line 393
    .line 394
    iget-object v5, v3, Lpn4;->o:Lrn4;

    .line 395
    .line 396
    check-cast v5, Lo25;

    .line 397
    .line 398
    invoke-virtual {v5}, Lo25;->A()V

    .line 399
    .line 400
    .line 401
    goto :goto_d

    .line 402
    :cond_12
    invoke-virtual {v3}, Lpn4;->b()V

    .line 403
    .line 404
    .line 405
    iget-object v5, v3, Lpn4;->o:Lrn4;

    .line 406
    .line 407
    check-cast v5, Lo25;

    .line 408
    .line 409
    invoke-virtual {v5, v12}, Lo25;->z(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    :goto_d
    invoke-virtual {v3}, Lpn4;->b()V

    .line 413
    .line 414
    .line 415
    iget-object v5, v3, Lpn4;->o:Lrn4;

    .line 416
    .line 417
    check-cast v5, Lo25;

    .line 418
    .line 419
    invoke-virtual {v5, v13, v14}, Lo25;->B(J)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v3}, Lpn4;->b()V

    .line 423
    .line 424
    .line 425
    iget-object v5, v3, Lpn4;->o:Lrn4;

    .line 426
    .line 427
    check-cast v5, Lo25;

    .line 428
    .line 429
    invoke-virtual {v5}, Lo25;->D()Llo4;

    .line 430
    .line 431
    .line 432
    move-result-object v5

    .line 433
    invoke-virtual {v5}, Llo4;->clear()V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v0, v6}, Lpb5;->G(Lu35;)Ljava/util/HashMap;

    .line 437
    .line 438
    .line 439
    move-result-object v5

    .line 440
    invoke-virtual {v3}, Lpn4;->b()V

    .line 441
    .line 442
    .line 443
    iget-object v6, v3, Lpn4;->o:Lrn4;

    .line 444
    .line 445
    check-cast v6, Lo25;

    .line 446
    .line 447
    invoke-virtual {v6}, Lo25;->D()Llo4;

    .line 448
    .line 449
    .line 450
    move-result-object v6

    .line 451
    invoke-virtual {v6, v5}, Llo4;->putAll(Ljava/util/Map;)V

    .line 452
    .line 453
    .line 454
    :cond_13
    :goto_e
    move-object/from16 v5, v16

    .line 455
    .line 456
    goto/16 :goto_1

    .line 457
    .line 458
    :cond_14
    iget-object v5, v3, Lpn4;->o:Lrn4;

    .line 459
    .line 460
    check-cast v5, Lo25;

    .line 461
    .line 462
    invoke-virtual {v5}, Lo25;->N()J

    .line 463
    .line 464
    .line 465
    move-result-wide v17

    .line 466
    cmp-long v5, v13, v17

    .line 467
    .line 468
    if-lez v5, :cond_13

    .line 469
    .line 470
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 471
    .line 472
    .line 473
    move-result v5

    .line 474
    if-eqz v5, :cond_15

    .line 475
    .line 476
    invoke-virtual {v3}, Lpn4;->b()V

    .line 477
    .line 478
    .line 479
    iget-object v5, v3, Lpn4;->o:Lrn4;

    .line 480
    .line 481
    check-cast v5, Lo25;

    .line 482
    .line 483
    invoke-virtual {v5}, Lo25;->b0()V

    .line 484
    .line 485
    .line 486
    goto :goto_f

    .line 487
    :cond_15
    invoke-virtual {v3}, Lpn4;->b()V

    .line 488
    .line 489
    .line 490
    iget-object v5, v3, Lpn4;->o:Lrn4;

    .line 491
    .line 492
    check-cast v5, Lo25;

    .line 493
    .line 494
    invoke-virtual {v5, v8}, Lo25;->a0(Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    :goto_f
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 498
    .line 499
    .line 500
    move-result v5

    .line 501
    if-eqz v5, :cond_16

    .line 502
    .line 503
    invoke-virtual {v3}, Lpn4;->b()V

    .line 504
    .line 505
    .line 506
    iget-object v5, v3, Lpn4;->o:Lrn4;

    .line 507
    .line 508
    check-cast v5, Lo25;

    .line 509
    .line 510
    invoke-virtual {v5}, Lo25;->d0()V

    .line 511
    .line 512
    .line 513
    goto :goto_10

    .line 514
    :cond_16
    invoke-virtual {v3}, Lpn4;->b()V

    .line 515
    .line 516
    .line 517
    iget-object v5, v3, Lpn4;->o:Lrn4;

    .line 518
    .line 519
    check-cast v5, Lo25;

    .line 520
    .line 521
    invoke-virtual {v5, v11}, Lo25;->c0(Ljava/lang/String;)V

    .line 522
    .line 523
    .line 524
    :goto_10
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    .line 525
    .line 526
    .line 527
    move-result v5

    .line 528
    if-eqz v5, :cond_17

    .line 529
    .line 530
    invoke-virtual {v3}, Lpn4;->b()V

    .line 531
    .line 532
    .line 533
    iget-object v5, v3, Lpn4;->o:Lrn4;

    .line 534
    .line 535
    check-cast v5, Lo25;

    .line 536
    .line 537
    invoke-virtual {v5}, Lo25;->t()V

    .line 538
    .line 539
    .line 540
    goto :goto_11

    .line 541
    :cond_17
    invoke-virtual {v3}, Lpn4;->b()V

    .line 542
    .line 543
    .line 544
    iget-object v5, v3, Lpn4;->o:Lrn4;

    .line 545
    .line 546
    check-cast v5, Lo25;

    .line 547
    .line 548
    invoke-virtual {v5, v12}, Lo25;->e0(Ljava/lang/String;)V

    .line 549
    .line 550
    .line 551
    :goto_11
    invoke-virtual {v0}, Lpb5;->e0()Lds4;

    .line 552
    .line 553
    .line 554
    move-result-object v5

    .line 555
    sget-object v7, Le05;->a1:Ld05;

    .line 556
    .line 557
    const/4 v8, 0x0

    .line 558
    invoke-virtual {v5, v8, v7}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 559
    .line 560
    .line 561
    move-result v5

    .line 562
    if-eqz v5, :cond_19

    .line 563
    .line 564
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 565
    .line 566
    .line 567
    move-result v5

    .line 568
    if-eqz v5, :cond_18

    .line 569
    .line 570
    invoke-virtual {v3}, Lpn4;->b()V

    .line 571
    .line 572
    .line 573
    iget-object v5, v3, Lpn4;->o:Lrn4;

    .line 574
    .line 575
    check-cast v5, Lo25;

    .line 576
    .line 577
    invoke-virtual {v5}, Lo25;->F()V

    .line 578
    .line 579
    .line 580
    goto :goto_12

    .line 581
    :cond_18
    invoke-virtual {v3}, Lpn4;->b()V

    .line 582
    .line 583
    .line 584
    iget-object v5, v3, Lpn4;->o:Lrn4;

    .line 585
    .line 586
    check-cast v5, Lo25;

    .line 587
    .line 588
    invoke-virtual {v5, v10}, Lo25;->E(Ljava/lang/String;)V

    .line 589
    .line 590
    .line 591
    :cond_19
    :goto_12
    invoke-virtual {v3}, Lpn4;->b()V

    .line 592
    .line 593
    .line 594
    iget-object v5, v3, Lpn4;->o:Lrn4;

    .line 595
    .line 596
    check-cast v5, Lo25;

    .line 597
    .line 598
    invoke-virtual {v5, v13, v14}, Lo25;->u(J)V

    .line 599
    .line 600
    .line 601
    invoke-virtual {v3}, Lpn4;->b()V

    .line 602
    .line 603
    .line 604
    iget-object v5, v3, Lpn4;->o:Lrn4;

    .line 605
    .line 606
    check-cast v5, Lo25;

    .line 607
    .line 608
    invoke-virtual {v5}, Lo25;->C()Llo4;

    .line 609
    .line 610
    .line 611
    move-result-object v5

    .line 612
    invoke-virtual {v5}, Llo4;->clear()V

    .line 613
    .line 614
    .line 615
    invoke-virtual {v0, v6}, Lpb5;->G(Lu35;)Ljava/util/HashMap;

    .line 616
    .line 617
    .line 618
    move-result-object v5

    .line 619
    invoke-virtual {v3}, Lpn4;->b()V

    .line 620
    .line 621
    .line 622
    iget-object v6, v3, Lpn4;->o:Lrn4;

    .line 623
    .line 624
    check-cast v6, Lo25;

    .line 625
    .line 626
    invoke-virtual {v6}, Lo25;->C()Llo4;

    .line 627
    .line 628
    .line 629
    move-result-object v6

    .line 630
    invoke-virtual {v6, v5}, Llo4;->putAll(Ljava/util/Map;)V

    .line 631
    .line 632
    .line 633
    goto/16 :goto_e

    .line 634
    .line 635
    :cond_1a
    invoke-virtual {v3}, Lpn4;->d()Lrn4;

    .line 636
    .line 637
    .line 638
    move-result-object v5

    .line 639
    check-cast v5, Lo25;

    .line 640
    .line 641
    invoke-static {}, Lo25;->Z()Lo25;

    .line 642
    .line 643
    .line 644
    move-result-object v6

    .line 645
    invoke-virtual {v5, v6}, Lrn4;->equals(Ljava/lang/Object;)Z

    .line 646
    .line 647
    .line 648
    move-result v5

    .line 649
    if-nez v5, :cond_1b

    .line 650
    .line 651
    invoke-virtual {v3}, Lpn4;->d()Lrn4;

    .line 652
    .line 653
    .line 654
    move-result-object v5

    .line 655
    check-cast v5, Lo25;

    .line 656
    .line 657
    invoke-virtual {v2}, Lpn4;->b()V

    .line 658
    .line 659
    .line 660
    iget-object v6, v2, Lpn4;->o:Lrn4;

    .line 661
    .line 662
    check-cast v6, Lu45;

    .line 663
    .line 664
    invoke-virtual {v6, v5}, Lu45;->o1(Lo25;)V

    .line 665
    .line 666
    .line 667
    :cond_1b
    invoke-virtual {v3}, Lpn4;->d()Lrn4;

    .line 668
    .line 669
    .line 670
    move-result-object v3

    .line 671
    check-cast v3, Lo25;

    .line 672
    .line 673
    invoke-virtual {v3}, Lsm4;->a()[B

    .line 674
    .line 675
    .line 676
    move-result-object v3

    .line 677
    iget-object v4, v4, Lr45;->g:Lj45;

    .line 678
    .line 679
    invoke-static {v4}, Lr45;->l(Lq55;)V

    .line 680
    .line 681
    .line 682
    invoke-virtual {v4}, Lj45;->v()V

    .line 683
    .line 684
    .line 685
    iget-boolean v4, v1, Lm25;->R:Z

    .line 686
    .line 687
    iget-object v5, v1, Lm25;->H:[B

    .line 688
    .line 689
    const/4 v6, 0x0

    .line 690
    if-eq v5, v3, :cond_1c

    .line 691
    .line 692
    const/4 v5, 0x1

    .line 693
    goto :goto_13

    .line 694
    :cond_1c
    move v5, v6

    .line 695
    :goto_13
    or-int/2addr v4, v5

    .line 696
    iput-boolean v4, v1, Lm25;->R:Z

    .line 697
    .line 698
    iput-object v3, v1, Lm25;->H:[B

    .line 699
    .line 700
    invoke-virtual {v1}, Lm25;->o()Z

    .line 701
    .line 702
    .line 703
    move-result v3

    .line 704
    if-eqz v3, :cond_1d

    .line 705
    .line 706
    iget-object v3, v0, Lpb5;->c:Lat4;

    .line 707
    .line 708
    invoke-static {v3}, Lpb5;->T(Lab5;)V

    .line 709
    .line 710
    .line 711
    invoke-virtual {v3, v1, v6}, Lat4;->A0(Lm25;Z)V

    .line 712
    .line 713
    .line 714
    :cond_1d
    invoke-virtual {v0}, Lpb5;->e0()Lds4;

    .line 715
    .line 716
    .line 717
    move-result-object v3

    .line 718
    sget-object v4, Le05;->a1:Ld05;

    .line 719
    .line 720
    const/4 v5, 0x0

    .line 721
    invoke-virtual {v3, v5, v4}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 722
    .line 723
    .line 724
    move-result v3

    .line 725
    if-eqz v3, :cond_21

    .line 726
    .line 727
    move v3, v6

    .line 728
    :goto_14
    invoke-virtual {v2}, Lq45;->U()I

    .line 729
    .line 730
    .line 731
    move-result v4

    .line 732
    if-ge v3, v4, :cond_21

    .line 733
    .line 734
    iget-object v4, v2, Lpn4;->o:Lrn4;

    .line 735
    .line 736
    check-cast v4, Lu45;

    .line 737
    .line 738
    invoke-virtual {v4, v3}, Lu45;->Y1(I)Lu35;

    .line 739
    .line 740
    .line 741
    move-result-object v4

    .line 742
    invoke-virtual {v4}, Lu35;->y()Ljava/lang/String;

    .line 743
    .line 744
    .line 745
    move-result-object v5

    .line 746
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 747
    .line 748
    .line 749
    move-result v5

    .line 750
    if-nez v5, :cond_1e

    .line 751
    .line 752
    goto :goto_16

    .line 753
    :cond_1e
    invoke-virtual {v4}, Lrn4;->k()Lpn4;

    .line 754
    .line 755
    .line 756
    move-result-object v4

    .line 757
    check-cast v4, Ls35;

    .line 758
    .line 759
    invoke-virtual {v4}, Ls35;->g()Ljava/util/List;

    .line 760
    .line 761
    .line 762
    move-result-object v5

    .line 763
    move v9, v6

    .line 764
    :goto_15
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 765
    .line 766
    .line 767
    move-result v10

    .line 768
    if-ge v9, v10, :cond_20

    .line 769
    .line 770
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 771
    .line 772
    .line 773
    move-result-object v10

    .line 774
    check-cast v10, Lc45;

    .line 775
    .line 776
    invoke-virtual {v10}, Lc45;->u()Ljava/lang/String;

    .line 777
    .line 778
    .line 779
    move-result-object v10

    .line 780
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 781
    .line 782
    .line 783
    move-result v10

    .line 784
    if-eqz v10, :cond_1f

    .line 785
    .line 786
    invoke-virtual {v4, v9}, Ls35;->l(I)V

    .line 787
    .line 788
    .line 789
    invoke-virtual {v2, v3, v4}, Lq45;->V(ILs35;)V

    .line 790
    .line 791
    .line 792
    goto :goto_16

    .line 793
    :cond_1f
    add-int/lit8 v9, v9, 0x1

    .line 794
    .line 795
    goto :goto_15

    .line 796
    :cond_20
    :goto_16
    add-int/lit8 v3, v3, 0x1

    .line 797
    .line 798
    goto :goto_14

    .line 799
    :cond_21
    invoke-virtual {v0}, Lpb5;->e0()Lds4;

    .line 800
    .line 801
    .line 802
    move-result-object v2

    .line 803
    sget-object v3, Le05;->Z0:Ld05;

    .line 804
    .line 805
    const/4 v5, 0x0

    .line 806
    invoke-virtual {v2, v5, v3}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 807
    .line 808
    .line 809
    move-result v2

    .line 810
    if-eqz v2, :cond_22

    .line 811
    .line 812
    iget-object v0, v0, Lpb5;->c:Lat4;

    .line 813
    .line 814
    invoke-static {v0}, Lpb5;->T(Lab5;)V

    .line 815
    .line 816
    .line 817
    invoke-virtual {v1}, Lm25;->E()Ljava/lang/String;

    .line 818
    .line 819
    .line 820
    move-result-object v1

    .line 821
    const-string v2, "_lgclid"

    .line 822
    .line 823
    invoke-virtual {v0, v1, v2}, Lat4;->p0(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    .line 825
    .line 826
    :cond_22
    return-void
.end method

.method public final n0(Lvc5;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lpb5;->d()Lj45;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lj45;->v()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lpb5;->l0()V

    .line 9
    .line 10
    .line 11
    iget-object v4, p1, Lvc5;->n:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    iget-object p1, p1, Lvc5;->L:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {p1}, Lrt4;->b(Ljava/lang/String;)Lrt4;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0}, Lpb5;->c()La25;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v0, v0, La25;->n:Lx15;

    .line 27
    .line 28
    const-string v1, "Setting DMA consent for package"

    .line 29
    .line 30
    invoke-virtual {v0, v4, p1, v1}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lpb5;->d()Lj45;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lj45;->v()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lpb5;->l0()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v4}, Lpb5;->p0(Ljava/lang/String;)Landroid/os/Bundle;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const/16 v1, 0x64

    .line 48
    .line 49
    invoke-static {v1, v0}, Lrt4;->c(ILandroid/os/Bundle;)Lrt4;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lrt4;->a()Lu55;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-object v2, p0, Lpb5;->C:Ljava/util/HashMap;

    .line 58
    .line 59
    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    iget-object v2, p0, Lpb5;->c:Lat4;

    .line 63
    .line 64
    invoke-static {v2}, Lpb5;->T(Lab5;)V

    .line 65
    .line 66
    .line 67
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Lib0;->v()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Lab5;->w()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v4}, Lat4;->P(Ljava/lang/String;)Ly55;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    sget-object v5, Ly55;->c:Ly55;

    .line 84
    .line 85
    if-ne v3, v5, :cond_0

    .line 86
    .line 87
    invoke-virtual {v2, v4, v5}, Lat4;->b0(Ljava/lang/String;Ly55;)V

    .line 88
    .line 89
    .line 90
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    .line 91
    .line 92
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v5, "app_id"

    .line 96
    .line 97
    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p1, Lrt4;->b:Ljava/lang/String;

    .line 101
    .line 102
    const-string v5, "dma_consent_settings"

    .line 103
    .line 104
    invoke-virtual {v3, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, v3}, Lat4;->U(Landroid/content/ContentValues;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v4}, Lpb5;->p0(Ljava/lang/String;)Landroid/os/Bundle;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-static {v1, p1}, Lrt4;->c(ILandroid/os/Bundle;)Lrt4;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {p1}, Lrt4;->a()Lu55;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {p0}, Lpb5;->d()Lj45;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v1}, Lj45;->v()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Lpb5;->l0()V

    .line 130
    .line 131
    .line 132
    const/4 v1, 0x1

    .line 133
    sget-object v2, Lu55;->r:Lu55;

    .line 134
    .line 135
    const/4 v3, 0x0

    .line 136
    sget-object v5, Lu55;->q:Lu55;

    .line 137
    .line 138
    if-ne v0, v5, :cond_1

    .line 139
    .line 140
    if-ne p1, v2, :cond_1

    .line 141
    .line 142
    move v6, v1

    .line 143
    goto :goto_0

    .line 144
    :cond_1
    move v6, v3

    .line 145
    :goto_0
    if-ne v0, v2, :cond_2

    .line 146
    .line 147
    if-ne p1, v5, :cond_2

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_2
    move v1, v3

    .line 151
    :goto_1
    if-nez v6, :cond_4

    .line 152
    .line 153
    if-eqz v1, :cond_3

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_3
    return-void

    .line 157
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lpb5;->c()La25;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    iget-object p1, p1, La25;->n:Lx15;

    .line 162
    .line 163
    const-string v0, "Generated _dcu event for"

    .line 164
    .line 165
    invoke-virtual {p1, v4, v0}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    new-instance p1, Landroid/os/Bundle;

    .line 169
    .line 170
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 171
    .line 172
    .line 173
    iget-object v1, p0, Lpb5;->c:Lat4;

    .line 174
    .line 175
    invoke-static {v1}, Lpb5;->T(Lab5;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0}, Lpb5;->g()J

    .line 179
    .line 180
    .line 181
    move-result-wide v2

    .line 182
    const/4 v7, 0x0

    .line 183
    const/4 v8, 0x0

    .line 184
    const/4 v5, 0x0

    .line 185
    const/4 v6, 0x0

    .line 186
    invoke-virtual/range {v1 .. v8}, Lat4;->B0(JLjava/lang/String;ZZZZ)Lrs4;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    iget-wide v0, v0, Lrs4;->f:J

    .line 191
    .line 192
    invoke-virtual {p0}, Lpb5;->e0()Lds4;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    sget-object v3, Le05;->l0:Ld05;

    .line 197
    .line 198
    invoke-virtual {v2, v4, v3}, Lds4;->E(Ljava/lang/String;Ld05;)I

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    int-to-long v2, v2

    .line 203
    cmp-long v0, v0, v2

    .line 204
    .line 205
    if-gez v0, :cond_5

    .line 206
    .line 207
    const-string v0, "_r"

    .line 208
    .line 209
    const-wide/16 v1, 0x1

    .line 210
    .line 211
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 212
    .line 213
    .line 214
    iget-object v1, p0, Lpb5;->c:Lat4;

    .line 215
    .line 216
    invoke-static {v1}, Lpb5;->T(Lab5;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0}, Lpb5;->g()J

    .line 220
    .line 221
    .line 222
    move-result-wide v2

    .line 223
    const/4 v7, 0x1

    .line 224
    const/4 v8, 0x0

    .line 225
    const/4 v5, 0x0

    .line 226
    const/4 v6, 0x0

    .line 227
    invoke-virtual/range {v1 .. v8}, Lat4;->B0(JLjava/lang/String;ZZZZ)Lrs4;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-virtual {p0}, Lpb5;->c()La25;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    iget-object v1, v1, La25;->n:Lx15;

    .line 236
    .line 237
    iget-wide v2, v0, Lrs4;->f:J

    .line 238
    .line 239
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    const-string v2, "_dcu realtime event count"

    .line 244
    .line 245
    invoke-virtual {v1, v4, v0, v2}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    :cond_5
    iget-object p0, p0, Lpb5;->J:Llb5;

    .line 249
    .line 250
    const-string v0, "_dcu"

    .line 251
    .line 252
    invoke-virtual {p0, v4, v0, p1}, Llb5;->e(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 253
    .line 254
    .line 255
    return-void
.end method

.method public final o(Ly55;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lx55;->p:Lx55;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ly55;->i(Lx55;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/16 p1, 0x10

    .line 10
    .line 11
    new-array p1, p1, [B

    .line 12
    .line 13
    invoke-virtual {p0}, Lpb5;->k0()Lac5;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Lac5;->t0()Ljava/security/SecureRandom;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 22
    .line 23
    .line 24
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 25
    .line 26
    new-instance v0, Ljava/math/BigInteger;

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 30
    .line 31
    .line 32
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string v0, "%032x"

    .line 37
    .line 38
    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :cond_0
    const/4 p0, 0x0

    .line 44
    return-object p0
.end method

.method public final o0(Ljava/lang/String;)Lrt4;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lpb5;->d()Lj45;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lj45;->v()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lpb5;->l0()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lpb5;->C:Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lrt4;

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    iget-object p0, p0, Lpb5;->c:Lat4;

    .line 22
    .line 23
    invoke-static {p0}, Lpb5;->T(Lab5;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lib0;->v()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lab5;->w()V

    .line 33
    .line 34
    .line 35
    filled-new-array {p1}, [Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string v2, "select dma_consent_settings from consent_settings where app_id=? limit 1;"

    .line 40
    .line 41
    invoke-virtual {p0, v2, v1}, Lat4;->T(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {p0}, Lrt4;->b(Ljava/lang/String;)Lrt4;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    return-object p0

    .line 53
    :cond_0
    return-object v1
.end method

.method public final p(Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lpb5;->y:Ljava/util/ArrayList;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lpb5;->c()La25;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    iget-object p0, p0, La25;->f:Lx15;

    .line 19
    .line 20
    const-string p1, "Set uploading progress before finishing the previous upload"

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lx15;->a(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lpb5;->y:Ljava/util/ArrayList;

    .line 32
    .line 33
    return-void
.end method

.method public final p0(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 12

    .line 1
    invoke-virtual {p0}, Lpb5;->d()Lj45;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lj45;->v()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lpb5;->l0()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lpb5;->a:Lw35;

    .line 12
    .line 13
    invoke-static {v0}, Lpb5;->T(Lab5;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lw35;->R(Ljava/lang/String;)Lx05;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    return-object v1

    .line 24
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 25
    .line 26
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lpb5;->a(Ljava/lang/String;)Ly55;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    new-instance v3, Landroid/os/Bundle;

    .line 34
    .line 35
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 36
    .line 37
    .line 38
    iget-object v4, v2, Ly55;->a:Ljava/util/EnumMap;

    .line 39
    .line 40
    invoke-virtual {v4}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    const/4 v6, 0x3

    .line 53
    const/4 v7, 0x2

    .line 54
    const-string v8, "denied"

    .line 55
    .line 56
    const-string v9, "granted"

    .line 57
    .line 58
    if-eqz v5, :cond_4

    .line 59
    .line 60
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    check-cast v5, Ljava/util/Map$Entry;

    .line 65
    .line 66
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v10

    .line 70
    check-cast v10, Lu55;

    .line 71
    .line 72
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 73
    .line 74
    .line 75
    move-result v10

    .line 76
    if-eq v10, v7, :cond_3

    .line 77
    .line 78
    if-eq v10, v6, :cond_2

    .line 79
    .line 80
    move-object v8, v1

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    move-object v8, v9

    .line 83
    :cond_3
    :goto_1
    if-eqz v8, :cond_1

    .line 84
    .line 85
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    check-cast v5, Lx55;

    .line 90
    .line 91
    iget-object v5, v5, Lx55;->n:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v3, v5, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_4
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, p1}, Lpb5;->o0(Ljava/lang/String;)Lrt4;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    new-instance v4, Ldd1;

    .line 105
    .line 106
    const/16 v5, 0x1d

    .line 107
    .line 108
    invoke-direct {v4, v5}, Ldd1;-><init>(I)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, p1, v3, v2, v4}, Lpb5;->q0(Ljava/lang/String;Lrt4;Ly55;Ldd1;)Lrt4;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    new-instance v3, Landroid/os/Bundle;

    .line 116
    .line 117
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 118
    .line 119
    .line 120
    iget-object v4, v2, Lrt4;->e:Ljava/util/EnumMap;

    .line 121
    .line 122
    invoke-virtual {v4}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result v10

    .line 134
    if-eqz v10, :cond_8

    .line 135
    .line 136
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v10

    .line 140
    check-cast v10, Ljava/util/Map$Entry;

    .line 141
    .line 142
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v11

    .line 146
    check-cast v11, Lu55;

    .line 147
    .line 148
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    .line 149
    .line 150
    .line 151
    move-result v11

    .line 152
    if-eq v11, v7, :cond_7

    .line 153
    .line 154
    if-eq v11, v6, :cond_6

    .line 155
    .line 156
    move-object v11, v1

    .line 157
    goto :goto_3

    .line 158
    :cond_6
    move-object v11, v9

    .line 159
    goto :goto_3

    .line 160
    :cond_7
    move-object v11, v8

    .line 161
    :goto_3
    if-eqz v11, :cond_5

    .line 162
    .line 163
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v10

    .line 167
    check-cast v10, Lx55;

    .line 168
    .line 169
    iget-object v10, v10, Lx55;->n:Ljava/lang/String;

    .line 170
    .line 171
    invoke-virtual {v3, v10, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_8
    iget-object v1, v2, Lrt4;->c:Ljava/lang/Boolean;

    .line 176
    .line 177
    if-eqz v1, :cond_9

    .line 178
    .line 179
    const-string v4, "is_dma_region"

    .line 180
    .line 181
    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {v3, v4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    :cond_9
    iget-object v1, v2, Lrt4;->d:Ljava/lang/String;

    .line 189
    .line 190
    if-eqz v1, :cond_a

    .line 191
    .line 192
    const-string v2, "cps_display_str"

    .line 193
    .line 194
    invoke-virtual {v3, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    :cond_a
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 198
    .line 199
    .line 200
    iget-object v1, p0, Lpb5;->c:Lat4;

    .line 201
    .line 202
    invoke-static {v1}, Lpb5;->T(Lab5;)V

    .line 203
    .line 204
    .line 205
    const-string v2, "_npa"

    .line 206
    .line 207
    invoke-virtual {v1, p1, v2}, Lat4;->r0(Ljava/lang/String;Ljava/lang/String;)Lxb5;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    if-eqz v1, :cond_b

    .line 212
    .line 213
    iget-object p0, v1, Lxb5;->e:Ljava/lang/Object;

    .line 214
    .line 215
    const-wide/16 v1, 0x1

    .line 216
    .line 217
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result p0

    .line 225
    goto :goto_4

    .line 226
    :cond_b
    new-instance v1, Ldd1;

    .line 227
    .line 228
    invoke-direct {v1, v5}, Ldd1;-><init>(I)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p0, p1, v1}, Lpb5;->F(Ljava/lang/String;Ldd1;)I

    .line 232
    .line 233
    .line 234
    move-result p0

    .line 235
    :goto_4
    const/4 p1, 0x1

    .line 236
    if-eq p1, p0, :cond_c

    .line 237
    .line 238
    move-object v8, v9

    .line 239
    :cond_c
    const-string p0, "ad_personalization"

    .line 240
    .line 241
    invoke-virtual {v0, p0, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    return-object v0
.end method

.method public final q()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lpb5;->d()Lj45;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lj45;->v()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lpb5;->l0()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lpb5;->v:Z

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    :try_start_0
    iget-object v1, p0, Lpb5;->l:Lr45;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lr45;->o()Lo95;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v1, v1, Lo95;->e:Ljava/lang/Boolean;

    .line 25
    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Lpb5;->c()La25;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object v1, v1, La25;->i:Lx15;

    .line 33
    .line 34
    const-string v2, "Upload data called on the client side before use of service was decided"

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lx15;->a(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto/16 :goto_9

    .line 40
    .line 41
    :catchall_0
    move-exception v1

    .line 42
    goto/16 :goto_b

    .line 43
    .line 44
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    invoke-virtual {p0}, Lpb5;->c()La25;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iget-object v1, v1, La25;->f:Lx15;

    .line 55
    .line 56
    const-string v2, "Upload called in the client side when service should be used"

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Lx15;->a(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    goto/16 :goto_9

    .line 62
    .line 63
    :cond_1
    iget-wide v1, p0, Lpb5;->o:J

    .line 64
    .line 65
    const-wide/16 v3, 0x0

    .line 66
    .line 67
    cmp-long v1, v1, v3

    .line 68
    .line 69
    if-lez v1, :cond_2

    .line 70
    .line 71
    invoke-virtual {p0}, Lpb5;->N()V

    .line 72
    .line 73
    .line 74
    goto/16 :goto_9

    .line 75
    .line 76
    :cond_2
    invoke-virtual {p0}, Lpb5;->d()Lj45;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v1}, Lj45;->v()V

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lpb5;->y:Ljava/util/ArrayList;

    .line 84
    .line 85
    if-eqz v1, :cond_3

    .line 86
    .line 87
    invoke-virtual {p0}, Lpb5;->c()La25;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    iget-object v1, v1, La25;->n:Lx15;

    .line 92
    .line 93
    const-string v2, "Uploading requested multiple times"

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Lx15;->a(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    goto/16 :goto_9

    .line 99
    .line 100
    :cond_3
    iget-object v1, p0, Lpb5;->b:Li25;

    .line 101
    .line 102
    invoke-static {v1}, Lpb5;->T(Lab5;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Li25;->z()Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_4

    .line 110
    .line 111
    invoke-virtual {p0}, Lpb5;->c()La25;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    iget-object v1, v1, La25;->n:Lx15;

    .line 116
    .line 117
    const-string v2, "Network not connected, ignoring upload request"

    .line 118
    .line 119
    invoke-virtual {v1, v2}, Lx15;->a(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Lpb5;->N()V

    .line 123
    .line 124
    .line 125
    goto/16 :goto_9

    .line 126
    .line 127
    :cond_4
    invoke-virtual {p0}, Lpb5;->f()Lcom/google/android/gms/common/util/Clock;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 132
    .line 133
    .line 134
    move-result-wide v1

    .line 135
    invoke-virtual {p0}, Lpb5;->e0()Lds4;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    sget-object v6, Le05;->h0:Ld05;

    .line 140
    .line 141
    const/4 v7, 0x0

    .line 142
    invoke-virtual {v5, v7, v6}, Lds4;->E(Ljava/lang/String;Ld05;)I

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    invoke-virtual {p0}, Lpb5;->e0()Lds4;

    .line 147
    .line 148
    .line 149
    sget-object v6, Le05;->e:Ld05;

    .line 150
    .line 151
    invoke-virtual {v6, v7}, Ld05;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    check-cast v6, Ljava/lang/Long;

    .line 156
    .line 157
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 158
    .line 159
    .line 160
    move-result-wide v8

    .line 161
    sub-long v8, v1, v8

    .line 162
    .line 163
    move v6, v0

    .line 164
    :goto_0
    if-ge v6, v5, :cond_5

    .line 165
    .line 166
    invoke-virtual {p0, v8, v9, v7}, Lpb5;->I(JLjava/lang/String;)Z

    .line 167
    .line 168
    .line 169
    move-result v10

    .line 170
    if-eqz v10, :cond_5

    .line 171
    .line 172
    add-int/lit8 v6, v6, 0x1

    .line 173
    .line 174
    goto :goto_0

    .line 175
    :cond_5
    invoke-static {}, Ler4;->a()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0}, Lpb5;->d()Lj45;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    invoke-virtual {v5}, Lj45;->v()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0}, Lpb5;->H()V

    .line 186
    .line 187
    .line 188
    iget-object v5, p0, Lpb5;->i:Lr95;

    .line 189
    .line 190
    iget-object v5, v5, Lr95;->h:Ly25;

    .line 191
    .line 192
    invoke-virtual {v5}, Ly25;->a()J

    .line 193
    .line 194
    .line 195
    move-result-wide v5

    .line 196
    cmp-long v3, v5, v3

    .line 197
    .line 198
    if-eqz v3, :cond_6

    .line 199
    .line 200
    invoke-virtual {p0}, Lpb5;->c()La25;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    iget-object v3, v3, La25;->m:Lx15;

    .line 205
    .line 206
    const-string v4, "Uploading events. Elapsed time since last upload attempt (ms)"

    .line 207
    .line 208
    sub-long v5, v1, v5

    .line 209
    .line 210
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    .line 211
    .line 212
    .line 213
    move-result-wide v5

    .line 214
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    invoke-virtual {v3, v5, v4}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    :cond_6
    iget-object v3, p0, Lpb5;->c:Lat4;

    .line 222
    .line 223
    invoke-static {v3}, Lpb5;->T(Lab5;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v3}, Lat4;->D()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 231
    .line 232
    .line 233
    move-result v4

    .line 234
    const-wide/16 v5, -0x1

    .line 235
    .line 236
    if-nez v4, :cond_b

    .line 237
    .line 238
    iget-wide v8, p0, Lpb5;->A:J

    .line 239
    .line 240
    cmp-long v4, v8, v5

    .line 241
    .line 242
    if-nez v4, :cond_a

    .line 243
    .line 244
    iget-object v4, p0, Lpb5;->c:Lat4;

    .line 245
    .line 246
    invoke-static {v4}, Lpb5;->T(Lab5;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    .line 248
    .line 249
    :try_start_1
    invoke-virtual {v4}, Lat4;->m0()Landroid/database/sqlite/SQLiteDatabase;

    .line 250
    .line 251
    .line 252
    move-result-object v8

    .line 253
    const-string v9, "select rowid from raw_events order by rowid desc limit 1;"

    .line 254
    .line 255
    invoke-virtual {v8, v9, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 256
    .line 257
    .line 258
    move-result-object v7

    .line 259
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 260
    .line 261
    .line 262
    move-result v8
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 263
    if-nez v8, :cond_7

    .line 264
    .line 265
    :goto_1
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 266
    .line 267
    .line 268
    goto :goto_2

    .line 269
    :cond_7
    :try_start_3
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 270
    .line 271
    .line 272
    move-result-wide v5
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 273
    goto :goto_1

    .line 274
    :catchall_1
    move-exception v1

    .line 275
    goto :goto_3

    .line 276
    :catch_0
    move-exception v8

    .line 277
    :try_start_4
    iget-object v4, v4, Lib0;->a:Ljava/lang/Object;

    .line 278
    .line 279
    check-cast v4, Lr45;

    .line 280
    .line 281
    iget-object v4, v4, Lr45;->f:La25;

    .line 282
    .line 283
    invoke-static {v4}, Lr45;->l(Lq55;)V

    .line 284
    .line 285
    .line 286
    iget-object v4, v4, La25;->f:Lx15;

    .line 287
    .line 288
    const-string v9, "Error querying raw events"

    .line 289
    .line 290
    invoke-virtual {v4, v8, v9}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 291
    .line 292
    .line 293
    if-eqz v7, :cond_8

    .line 294
    .line 295
    goto :goto_1

    .line 296
    :cond_8
    :goto_2
    :try_start_5
    iput-wide v5, p0, Lpb5;->A:J

    .line 297
    .line 298
    goto :goto_4

    .line 299
    :goto_3
    if-eqz v7, :cond_9

    .line 300
    .line 301
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 302
    .line 303
    .line 304
    :cond_9
    throw v1

    .line 305
    :cond_a
    :goto_4
    invoke-virtual {p0, v1, v2, v3}, Lpb5;->r(JLjava/lang/String;)V

    .line 306
    .line 307
    .line 308
    goto/16 :goto_9

    .line 309
    .line 310
    :cond_b
    iput-wide v5, p0, Lpb5;->A:J

    .line 311
    .line 312
    iget-object v3, p0, Lpb5;->c:Lat4;

    .line 313
    .line 314
    invoke-static {v3}, Lpb5;->T(Lab5;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {p0}, Lpb5;->e0()Lds4;

    .line 318
    .line 319
    .line 320
    sget-object v4, Le05;->e:Ld05;

    .line 321
    .line 322
    invoke-virtual {v4, v7}, Ld05;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v4

    .line 326
    check-cast v4, Ljava/lang/Long;

    .line 327
    .line 328
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 329
    .line 330
    .line 331
    move-result-wide v4

    .line 332
    sub-long/2addr v1, v4

    .line 333
    invoke-virtual {v3}, Lib0;->v()V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v3}, Lab5;->w()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 337
    .line 338
    .line 339
    :try_start_6
    invoke-virtual {v3}, Lat4;->m0()Landroid/database/sqlite/SQLiteDatabase;

    .line 340
    .line 341
    .line 342
    move-result-object v4

    .line 343
    const-string v5, "select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;"

    .line 344
    .line 345
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    filled-new-array {v1}, [Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    invoke-virtual {v4, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 354
    .line 355
    .line 356
    move-result-object v1
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 357
    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 358
    .line 359
    .line 360
    move-result v2

    .line 361
    if-nez v2, :cond_c

    .line 362
    .line 363
    iget-object v2, v3, Lib0;->a:Ljava/lang/Object;

    .line 364
    .line 365
    check-cast v2, Lr45;

    .line 366
    .line 367
    iget-object v2, v2, Lr45;->f:La25;

    .line 368
    .line 369
    invoke-static {v2}, Lr45;->l(Lq55;)V

    .line 370
    .line 371
    .line 372
    iget-object v2, v2, La25;->n:Lx15;

    .line 373
    .line 374
    const-string v4, "No expired configs for apps with pending events"

    .line 375
    .line 376
    invoke-virtual {v2, v4}, Lx15;->a(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 377
    .line 378
    .line 379
    :goto_5
    :try_start_8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 380
    .line 381
    .line 382
    goto :goto_8

    .line 383
    :catchall_2
    move-exception v2

    .line 384
    goto :goto_6

    .line 385
    :catch_1
    move-exception v2

    .line 386
    goto :goto_7

    .line 387
    :cond_c
    :try_start_9
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v7
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 391
    goto :goto_5

    .line 392
    :goto_6
    move-object v7, v1

    .line 393
    goto :goto_a

    .line 394
    :catchall_3
    move-exception v1

    .line 395
    move-object v2, v1

    .line 396
    goto :goto_a

    .line 397
    :catch_2
    move-exception v1

    .line 398
    move-object v2, v1

    .line 399
    move-object v1, v7

    .line 400
    :goto_7
    :try_start_a
    iget-object v3, v3, Lib0;->a:Ljava/lang/Object;

    .line 401
    .line 402
    check-cast v3, Lr45;

    .line 403
    .line 404
    iget-object v3, v3, Lr45;->f:La25;

    .line 405
    .line 406
    invoke-static {v3}, Lr45;->l(Lq55;)V

    .line 407
    .line 408
    .line 409
    iget-object v3, v3, La25;->f:Lx15;

    .line 410
    .line 411
    const-string v4, "Error selecting expired configs"

    .line 412
    .line 413
    invoke-virtual {v3, v2, v4}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 414
    .line 415
    .line 416
    if-eqz v1, :cond_d

    .line 417
    .line 418
    goto :goto_5

    .line 419
    :cond_d
    :goto_8
    :try_start_b
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 420
    .line 421
    .line 422
    move-result v1

    .line 423
    if-nez v1, :cond_e

    .line 424
    .line 425
    iget-object v1, p0, Lpb5;->c:Lat4;

    .line 426
    .line 427
    invoke-static {v1}, Lpb5;->T(Lab5;)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v1, v7}, Lat4;->z0(Ljava/lang/String;)Lm25;

    .line 431
    .line 432
    .line 433
    move-result-object v1

    .line 434
    if-eqz v1, :cond_e

    .line 435
    .line 436
    invoke-virtual {p0, v1}, Lpb5;->A(Lm25;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 437
    .line 438
    .line 439
    :cond_e
    :goto_9
    iput-boolean v0, p0, Lpb5;->v:Z

    .line 440
    .line 441
    invoke-virtual {p0}, Lpb5;->O()V

    .line 442
    .line 443
    .line 444
    return-void

    .line 445
    :goto_a
    if-eqz v7, :cond_f

    .line 446
    .line 447
    :try_start_c
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 448
    .line 449
    .line 450
    :cond_f
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 451
    :goto_b
    iput-boolean v0, p0, Lpb5;->v:Z

    .line 452
    .line 453
    invoke-virtual {p0}, Lpb5;->O()V

    .line 454
    .line 455
    .line 456
    throw v1
.end method

.method public final q0(Ljava/lang/String;Lrt4;Ly55;Ldd1;)Lrt4;
    .locals 10

    .line 1
    iget-object p0, p0, Lpb5;->a:Lw35;

    .line 2
    .line 3
    invoke-static {p0}, Lpb5;->T(Lab5;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lw35;->R(Ljava/lang/String;)Lx05;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "-"

    .line 11
    .line 12
    const/16 v2, 0x5a

    .line 13
    .line 14
    sget-object v3, Lu55;->q:Lu55;

    .line 15
    .line 16
    sget-object v4, Lx55;->q:Lx55;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p2}, Lrt4;->a()Lu55;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    if-ne p0, v3, :cond_0

    .line 25
    .line 26
    iget v2, p2, Lrt4;->a:I

    .line 27
    .line 28
    invoke-virtual {p4, v4, v2}, Ldd1;->v(Lx55;I)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    sget-object p0, Lgs4;->w:Lgs4;

    .line 33
    .line 34
    invoke-virtual {p4, v4, p0}, Ldd1;->w(Lx55;Lgs4;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    new-instance p0, Lrt4;

    .line 38
    .line 39
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 40
    .line 41
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 42
    .line 43
    invoke-direct {p0, p1, v2, p2, v1}, Lrt4;-><init>(Ljava/lang/Boolean;ILjava/lang/Boolean;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_1
    invoke-virtual {p2}, Lrt4;->a()Lu55;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const/4 v5, 0x0

    .line 52
    const/4 v6, 0x1

    .line 53
    sget-object v7, Lu55;->r:Lu55;

    .line 54
    .line 55
    if-eq v0, v7, :cond_c

    .line 56
    .line 57
    if-ne v0, v3, :cond_2

    .line 58
    .line 59
    goto/16 :goto_5

    .line 60
    .line 61
    :cond_2
    sget-object p2, Lu55;->p:Lu55;

    .line 62
    .line 63
    sget-object v8, Lu55;->o:Lu55;

    .line 64
    .line 65
    if-ne v0, p2, :cond_3

    .line 66
    .line 67
    invoke-virtual {p0, p1, v4}, Lw35;->z(Ljava/lang/String;Lx55;)Lu55;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    if-eq p2, v8, :cond_3

    .line 72
    .line 73
    sget-object p3, Lgs4;->v:Lgs4;

    .line 74
    .line 75
    invoke-virtual {p4, v4, p3}, Ldd1;->w(Lx55;Lgs4;)V

    .line 76
    .line 77
    .line 78
    move-object v0, p2

    .line 79
    goto/16 :goto_6

    .line 80
    .line 81
    :cond_3
    invoke-virtual {p0}, Lib0;->v()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, p1}, Lw35;->B(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, p1}, Lw35;->R(Ljava/lang/String;)Lx05;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    if-nez p2, :cond_4

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_4
    invoke-virtual {p2}, Lx05;->u()Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_6

    .line 107
    .line 108
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Lc05;

    .line 113
    .line 114
    invoke-virtual {v0}, Lc05;->t()I

    .line 115
    .line 116
    .line 117
    move-result v9

    .line 118
    invoke-static {v9}, Lw35;->G(I)Lx55;

    .line 119
    .line 120
    .line 121
    move-result-object v9

    .line 122
    if-ne v4, v9, :cond_5

    .line 123
    .line 124
    invoke-virtual {v0}, Lc05;->u()I

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    invoke-static {p2}, Lw35;->G(I)Lx55;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    goto :goto_2

    .line 133
    :cond_6
    :goto_1
    const/4 p2, 0x0

    .line 134
    :goto_2
    iget-object p3, p3, Ly55;->a:Ljava/util/EnumMap;

    .line 135
    .line 136
    sget-object v0, Lx55;->o:Lx55;

    .line 137
    .line 138
    invoke-virtual {p3, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p3

    .line 142
    check-cast p3, Lu55;

    .line 143
    .line 144
    if-nez p3, :cond_7

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_7
    move-object v8, p3

    .line 148
    :goto_3
    if-eq v8, v7, :cond_8

    .line 149
    .line 150
    if-ne v8, v3, :cond_9

    .line 151
    .line 152
    :cond_8
    move p3, v6

    .line 153
    goto :goto_4

    .line 154
    :cond_9
    move p3, v5

    .line 155
    :goto_4
    if-ne p2, v0, :cond_a

    .line 156
    .line 157
    if-eqz p3, :cond_a

    .line 158
    .line 159
    sget-object p2, Lgs4;->q:Lgs4;

    .line 160
    .line 161
    invoke-virtual {p4, v4, p2}, Ldd1;->w(Lx55;Lgs4;)V

    .line 162
    .line 163
    .line 164
    move-object v0, v8

    .line 165
    goto :goto_6

    .line 166
    :cond_a
    sget-object p2, Lgs4;->p:Lgs4;

    .line 167
    .line 168
    invoke-virtual {p4, v4, p2}, Ldd1;->w(Lx55;Lgs4;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0, p1, v4}, Lw35;->Q(Ljava/lang/String;Lx55;)Z

    .line 172
    .line 173
    .line 174
    move-result p2

    .line 175
    if-eq v6, p2, :cond_b

    .line 176
    .line 177
    move-object v0, v3

    .line 178
    goto :goto_6

    .line 179
    :cond_b
    move-object v0, v7

    .line 180
    goto :goto_6

    .line 181
    :cond_c
    :goto_5
    iget v2, p2, Lrt4;->a:I

    .line 182
    .line 183
    invoke-virtual {p4, v4, v2}, Ldd1;->v(Lx55;I)V

    .line 184
    .line 185
    .line 186
    :goto_6
    invoke-virtual {p0}, Lib0;->v()V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0, p1}, Lw35;->B(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0, p1}, Lw35;->R(Ljava/lang/String;)Lx05;

    .line 193
    .line 194
    .line 195
    move-result-object p2

    .line 196
    if-nez p2, :cond_d

    .line 197
    .line 198
    goto :goto_7

    .line 199
    :cond_d
    invoke-virtual {p2}, Lx05;->w()Z

    .line 200
    .line 201
    .line 202
    move-result p3

    .line 203
    if-eqz p3, :cond_e

    .line 204
    .line 205
    invoke-virtual {p2}, Lx05;->x()Z

    .line 206
    .line 207
    .line 208
    move-result p2

    .line 209
    if-eqz p2, :cond_f

    .line 210
    .line 211
    :cond_e
    :goto_7
    move v5, v6

    .line 212
    :cond_f
    invoke-static {p0}, Lpb5;->T(Lab5;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0}, Lib0;->v()V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0, p1}, Lw35;->B(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    new-instance p2, Ljava/util/TreeSet;

    .line 222
    .line 223
    invoke-direct {p2}, Ljava/util/TreeSet;-><init>()V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0, p1}, Lw35;->R(Ljava/lang/String;)Lx05;

    .line 227
    .line 228
    .line 229
    move-result-object p0

    .line 230
    if-nez p0, :cond_10

    .line 231
    .line 232
    goto :goto_9

    .line 233
    :cond_10
    invoke-virtual {p0}, Lx05;->v()Ljava/util/List;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 238
    .line 239
    .line 240
    move-result-object p0

    .line 241
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 242
    .line 243
    .line 244
    move-result p1

    .line 245
    if-eqz p1, :cond_11

    .line 246
    .line 247
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    check-cast p1, Lq05;

    .line 252
    .line 253
    invoke-virtual {p1}, Lq05;->t()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    invoke-virtual {p2, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    goto :goto_8

    .line 261
    :cond_11
    :goto_9
    if-eq v0, v3, :cond_14

    .line 262
    .line 263
    invoke-virtual {p2}, Ljava/util/TreeSet;->isEmpty()Z

    .line 264
    .line 265
    .line 266
    move-result p0

    .line 267
    if-eqz p0, :cond_12

    .line 268
    .line 269
    goto :goto_a

    .line 270
    :cond_12
    new-instance p0, Lrt4;

    .line 271
    .line 272
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 273
    .line 274
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 275
    .line 276
    .line 277
    move-result-object p3

    .line 278
    const-string p4, ""

    .line 279
    .line 280
    if-eqz v5, :cond_13

    .line 281
    .line 282
    invoke-static {p4, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object p4

    .line 286
    :cond_13
    invoke-direct {p0, p1, v2, p3, p4}, Lrt4;-><init>(Ljava/lang/Boolean;ILjava/lang/Boolean;Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    return-object p0

    .line 290
    :cond_14
    :goto_a
    new-instance p0, Lrt4;

    .line 291
    .line 292
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 293
    .line 294
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 295
    .line 296
    .line 297
    move-result-object p2

    .line 298
    invoke-direct {p0, p1, v2, p2, v1}, Lrt4;-><init>(Ljava/lang/Boolean;ILjava/lang/Boolean;Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    return-object p0
.end method

.method public final r(JLjava/lang/String;)V
    .locals 33

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-wide/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v6, p3

    .line 6
    .line 7
    const-string v4, "data"

    .line 8
    .line 9
    invoke-virtual {v1}, Lpb5;->e0()Lds4;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v5, Le05;->h:Ld05;

    .line 14
    .line 15
    invoke-virtual {v0, v6, v5}, Lds4;->E(Ljava/lang/String;Ld05;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {v1}, Lpb5;->e0()Lds4;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    sget-object v7, Le05;->i:Ld05;

    .line 24
    .line 25
    invoke-virtual {v5, v6, v7}, Lds4;->E(Ljava/lang/String;Ld05;)I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    const/4 v7, 0x0

    .line 30
    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    invoke-virtual {v1}, Lpb5;->g0()Lat4;

    .line 35
    .line 36
    .line 37
    move-result-object v8

    .line 38
    iget-object v9, v8, Lib0;->a:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v9, Lr45;

    .line 41
    .line 42
    invoke-virtual {v8}, Lib0;->v()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v8}, Lab5;->w()V

    .line 46
    .line 47
    .line 48
    const/4 v10, 0x1

    .line 49
    if-lez v0, :cond_0

    .line 50
    .line 51
    move v11, v10

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    move v11, v7

    .line 54
    :goto_0
    invoke-static {v11}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 55
    .line 56
    .line 57
    if-lez v5, :cond_1

    .line 58
    .line 59
    move v11, v10

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    move v11, v7

    .line 62
    :goto_1
    invoke-static {v11}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 63
    .line 64
    .line 65
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    :try_start_0
    invoke-virtual {v8}, Lat4;->m0()Landroid/database/sqlite/SQLiteDatabase;

    .line 69
    .line 70
    .line 71
    move-result-object v15

    .line 72
    const-string v16, "queue"
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 73
    .line 74
    const-wide/16 v24, -0x1

    .line 75
    .line 76
    :try_start_1
    const-string v11, "rowid"

    .line 77
    .line 78
    const-string v12, "retry_count"

    .line 79
    .line 80
    filled-new-array {v11, v4, v12}, [Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v17

    .line 84
    const-string v18, "app_id=?"

    .line 85
    .line 86
    filled-new-array {v6}, [Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v19

    .line 90
    const-string v22, "rowid"

    .line 91
    .line 92
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v23

    .line 96
    const/16 v20, 0x0

    .line 97
    .line 98
    const/16 v21, 0x0

    .line 99
    .line 100
    invoke-virtual/range {v15 .. v23}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 101
    .line 102
    .line 103
    move-result-object v11
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 104
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-nez v0, :cond_3

    .line 109
    .line 110
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    .line 112
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 113
    .line 114
    .line 115
    :cond_2
    move-object v12, v0

    .line 116
    goto/16 :goto_12

    .line 117
    .line 118
    :catchall_0
    move-exception v0

    .line 119
    goto/16 :goto_e

    .line 120
    .line 121
    :catch_0
    move-exception v0

    .line 122
    move-object/from16 v23, v9

    .line 123
    .line 124
    goto/16 :goto_11

    .line 125
    .line 126
    :cond_3
    :try_start_3
    new-instance v12, Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .line 130
    .line 131
    move v15, v7

    .line 132
    :goto_3
    invoke-interface {v11, v7}, Landroid/database/Cursor;->getLong(I)J

    .line 133
    .line 134
    .line 135
    move-result-wide v16
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 136
    :try_start_4
    invoke-interface {v11, v10}, Landroid/database/Cursor;->getBlob(I)[B

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    iget-object v10, v8, Lta5;->b:Lpb5;

    .line 141
    .line 142
    invoke-virtual {v10}, Lpb5;->j0()Lub5;

    .line 143
    .line 144
    .line 145
    move-result-object v10
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 146
    :try_start_5
    new-instance v14, Ljava/io/ByteArrayInputStream;

    .line 147
    .line 148
    invoke-direct {v14, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 149
    .line 150
    .line 151
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    .line 152
    .line 153
    invoke-direct {v0, v14}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 154
    .line 155
    .line 156
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    .line 157
    .line 158
    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 159
    .line 160
    .line 161
    const/16 v7, 0x400

    .line 162
    .line 163
    new-array v7, v7, [B
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 164
    .line 165
    move-object/from16 v22, v8

    .line 166
    .line 167
    :goto_4
    :try_start_6
    invoke-virtual {v0, v7}, Ljava/io/InputStream;->read([B)I

    .line 168
    .line 169
    .line 170
    move-result v8

    .line 171
    if-gtz v8, :cond_b

    .line 172
    .line 173
    invoke-virtual {v0}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v14}, Ljava/io/ByteArrayInputStream;->close()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 180
    .line 181
    .line 182
    move-result-object v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 183
    :try_start_7
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    .line 184
    .line 185
    .line 186
    move-result v7

    .line 187
    if-nez v7, :cond_4

    .line 188
    .line 189
    array-length v7, v0
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 190
    add-int/2addr v7, v15

    .line 191
    if-le v7, v5, :cond_4

    .line 192
    .line 193
    goto/16 :goto_d

    .line 194
    .line 195
    :cond_4
    :try_start_8
    invoke-static {}, Lu45;->Y()Lq45;

    .line 196
    .line 197
    .line 198
    move-result-object v7

    .line 199
    invoke-static {v7, v0}, Lub5;->g0(Lpn4;[B)Lpn4;

    .line 200
    .line 201
    .line 202
    move-result-object v7

    .line 203
    check-cast v7, Lq45;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 204
    .line 205
    :try_start_9
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    .line 206
    .line 207
    .line 208
    move-result v8

    .line 209
    if-nez v8, :cond_9

    .line 210
    .line 211
    const/4 v8, 0x0

    .line 212
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v10

    .line 216
    check-cast v10, Landroid/util/Pair;

    .line 217
    .line 218
    iget-object v8, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 219
    .line 220
    check-cast v8, Lu45;

    .line 221
    .line 222
    invoke-virtual {v7}, Lpn4;->d()Lrn4;

    .line 223
    .line 224
    .line 225
    move-result-object v10

    .line 226
    check-cast v10, Lu45;

    .line 227
    .line 228
    invoke-virtual {v8}, Lu45;->y0()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v13

    .line 232
    invoke-virtual {v10}, Lu45;->y0()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v14

    .line 236
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v13

    .line 240
    if-eqz v13, :cond_d

    .line 241
    .line 242
    invoke-virtual {v8}, Lu45;->F0()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v13

    .line 246
    invoke-virtual {v10}, Lu45;->F0()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v14

    .line 250
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result v13

    .line 254
    if-eqz v13, :cond_d

    .line 255
    .line 256
    invoke-virtual {v8}, Lu45;->H0()Z

    .line 257
    .line 258
    .line 259
    move-result v13

    .line 260
    invoke-virtual {v10}, Lu45;->H0()Z

    .line 261
    .line 262
    .line 263
    move-result v14

    .line 264
    if-ne v13, v14, :cond_d

    .line 265
    .line 266
    invoke-virtual {v8}, Lu45;->J0()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v13

    .line 270
    invoke-virtual {v10}, Lu45;->J0()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v14

    .line 274
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    move-result v13

    .line 278
    if-eqz v13, :cond_d

    .line 279
    .line 280
    invoke-virtual {v8}, Lu45;->Z1()Ldo4;

    .line 281
    .line 282
    .line 283
    move-result-object v8

    .line 284
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 285
    .line 286
    .line 287
    move-result-object v8

    .line 288
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 289
    .line 290
    .line 291
    move-result v13
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 292
    const-string v14, "_npa"

    .line 293
    .line 294
    if-eqz v13, :cond_6

    .line 295
    .line 296
    :try_start_a
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v13

    .line 300
    check-cast v13, Lh55;

    .line 301
    .line 302
    move-object/from16 v23, v8

    .line 303
    .line 304
    invoke-virtual {v13}, Lh55;->v()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v8

    .line 308
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    move-result v8

    .line 312
    if-eqz v8, :cond_5

    .line 313
    .line 314
    invoke-virtual {v13}, Lh55;->z()J

    .line 315
    .line 316
    .line 317
    move-result-wide v26

    .line 318
    goto :goto_6

    .line 319
    :cond_5
    move-object/from16 v8, v23

    .line 320
    .line 321
    goto :goto_5

    .line 322
    :cond_6
    move-wide/from16 v26, v24

    .line 323
    .line 324
    :goto_6
    invoke-virtual {v10}, Lu45;->Z1()Ldo4;

    .line 325
    .line 326
    .line 327
    move-result-object v8

    .line 328
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 329
    .line 330
    .line 331
    move-result-object v8

    .line 332
    :cond_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 333
    .line 334
    .line 335
    move-result v10

    .line 336
    if-eqz v10, :cond_8

    .line 337
    .line 338
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v10

    .line 342
    check-cast v10, Lh55;

    .line 343
    .line 344
    invoke-virtual {v10}, Lh55;->v()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v13

    .line 348
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    move-result v13

    .line 352
    if-eqz v13, :cond_7

    .line 353
    .line 354
    invoke-virtual {v10}, Lh55;->z()J

    .line 355
    .line 356
    .line 357
    move-result-wide v13

    .line 358
    goto :goto_7

    .line 359
    :cond_8
    move-wide/from16 v13, v24

    .line 360
    .line 361
    :goto_7
    cmp-long v8, v26, v13

    .line 362
    .line 363
    if-nez v8, :cond_d

    .line 364
    .line 365
    :cond_9
    const/4 v8, 0x2

    .line 366
    invoke-interface {v11, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 367
    .line 368
    .line 369
    move-result v10

    .line 370
    if-nez v10, :cond_a

    .line 371
    .line 372
    invoke-interface {v11, v8}, Landroid/database/Cursor;->getInt(I)I

    .line 373
    .line 374
    .line 375
    move-result v10

    .line 376
    invoke-virtual {v7}, Lpn4;->b()V

    .line 377
    .line 378
    .line 379
    iget-object v8, v7, Lpn4;->o:Lrn4;

    .line 380
    .line 381
    check-cast v8, Lu45;

    .line 382
    .line 383
    invoke-virtual {v8, v10}, Lu45;->X0(I)V

    .line 384
    .line 385
    .line 386
    :cond_a
    array-length v0, v0

    .line 387
    add-int/2addr v15, v0

    .line 388
    invoke-virtual {v7}, Lpn4;->d()Lrn4;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    check-cast v0, Lu45;

    .line 393
    .line 394
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 395
    .line 396
    .line 397
    move-result-object v7

    .line 398
    invoke-static {v0, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    .line 404
    .line 405
    :goto_8
    move-object/from16 v23, v9

    .line 406
    .line 407
    goto :goto_c

    .line 408
    :catch_1
    move-exception v0

    .line 409
    invoke-virtual {v9}, Lr45;->c()La25;

    .line 410
    .line 411
    .line 412
    move-result-object v7

    .line 413
    invoke-virtual {v7}, La25;->z()Lx15;

    .line 414
    .line 415
    .line 416
    move-result-object v7

    .line 417
    const-string v8, "Failed to merge queued bundle. appId"

    .line 418
    .line 419
    invoke-static {v6}, La25;->D(Ljava/lang/String;)Ly15;

    .line 420
    .line 421
    .line 422
    move-result-object v10

    .line 423
    invoke-virtual {v7, v10, v0, v8}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 424
    .line 425
    .line 426
    goto :goto_8

    .line 427
    :catch_2
    move-exception v0

    .line 428
    :goto_9
    move-object/from16 v23, v9

    .line 429
    .line 430
    goto :goto_a

    .line 431
    :cond_b
    move-object/from16 v23, v9

    .line 432
    .line 433
    const/4 v9, 0x0

    .line 434
    :try_start_b
    invoke-virtual {v13, v7, v9, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 435
    .line 436
    .line 437
    move-object/from16 v9, v23

    .line 438
    .line 439
    goto/16 :goto_4

    .line 440
    .line 441
    :catch_3
    move-exception v0

    .line 442
    goto :goto_a

    .line 443
    :catch_4
    move-exception v0

    .line 444
    move-object/from16 v22, v8

    .line 445
    .line 446
    goto :goto_9

    .line 447
    :goto_a
    :try_start_c
    iget-object v7, v10, Lib0;->a:Ljava/lang/Object;

    .line 448
    .line 449
    check-cast v7, Lr45;

    .line 450
    .line 451
    invoke-virtual {v7}, Lr45;->c()La25;

    .line 452
    .line 453
    .line 454
    move-result-object v7

    .line 455
    invoke-virtual {v7}, La25;->z()Lx15;

    .line 456
    .line 457
    .line 458
    move-result-object v7

    .line 459
    const-string v8, "Failed to ungzip content"

    .line 460
    .line 461
    invoke-virtual {v7, v0, v8}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    throw v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 465
    :catch_5
    move-exception v0

    .line 466
    goto :goto_b

    .line 467
    :catch_6
    move-exception v0

    .line 468
    goto :goto_11

    .line 469
    :catch_7
    move-exception v0

    .line 470
    move-object/from16 v22, v8

    .line 471
    .line 472
    move-object/from16 v23, v9

    .line 473
    .line 474
    :goto_b
    :try_start_d
    invoke-virtual/range {v23 .. v23}, Lr45;->c()La25;

    .line 475
    .line 476
    .line 477
    move-result-object v7

    .line 478
    invoke-virtual {v7}, La25;->z()Lx15;

    .line 479
    .line 480
    .line 481
    move-result-object v7

    .line 482
    const-string v8, "Failed to unzip queued bundle. appId"

    .line 483
    .line 484
    invoke-static {v6}, La25;->D(Ljava/lang/String;)Ly15;

    .line 485
    .line 486
    .line 487
    move-result-object v9

    .line 488
    invoke-virtual {v7, v9, v0, v8}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    :goto_c
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 492
    .line 493
    .line 494
    move-result v0
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 495
    if-eqz v0, :cond_d

    .line 496
    .line 497
    if-le v15, v5, :cond_c

    .line 498
    .line 499
    goto :goto_d

    .line 500
    :cond_c
    move-object/from16 v8, v22

    .line 501
    .line 502
    move-object/from16 v9, v23

    .line 503
    .line 504
    const/4 v7, 0x0

    .line 505
    const/4 v10, 0x1

    .line 506
    goto/16 :goto_3

    .line 507
    .line 508
    :cond_d
    :goto_d
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 509
    .line 510
    .line 511
    goto :goto_12

    .line 512
    :goto_e
    move-object v14, v11

    .line 513
    goto/16 :goto_3f

    .line 514
    .line 515
    :catchall_1
    move-exception v0

    .line 516
    goto :goto_f

    .line 517
    :catch_8
    move-exception v0

    .line 518
    move-object/from16 v23, v9

    .line 519
    .line 520
    goto :goto_10

    .line 521
    :catch_9
    move-exception v0

    .line 522
    move-object/from16 v23, v9

    .line 523
    .line 524
    const-wide/16 v24, -0x1

    .line 525
    .line 526
    goto :goto_10

    .line 527
    :goto_f
    const/4 v14, 0x0

    .line 528
    goto/16 :goto_3f

    .line 529
    .line 530
    :goto_10
    const/4 v11, 0x0

    .line 531
    :goto_11
    :try_start_e
    invoke-virtual/range {v23 .. v23}, Lr45;->c()La25;

    .line 532
    .line 533
    .line 534
    move-result-object v5

    .line 535
    invoke-virtual {v5}, La25;->z()Lx15;

    .line 536
    .line 537
    .line 538
    move-result-object v5

    .line 539
    const-string v7, "Error querying bundles. appId"

    .line 540
    .line 541
    invoke-static {v6}, La25;->D(Ljava/lang/String;)Ly15;

    .line 542
    .line 543
    .line 544
    move-result-object v8

    .line 545
    invoke-virtual {v5, v8, v0, v7}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 546
    .line 547
    .line 548
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 549
    .line 550
    if-eqz v11, :cond_2

    .line 551
    .line 552
    goto/16 :goto_2

    .line 553
    .line 554
    :goto_12
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    .line 555
    .line 556
    .line 557
    move-result v0

    .line 558
    if-eqz v0, :cond_e

    .line 559
    .line 560
    goto/16 :goto_3e

    .line 561
    .line 562
    :cond_e
    sget-object v0, Llq4;->o:Llq4;

    .line 563
    .line 564
    iget-object v5, v0, Llq4;->n:Lfu3;

    .line 565
    .line 566
    iget-object v5, v5, Lfu3;->n:Ljava/lang/Object;

    .line 567
    .line 568
    check-cast v5, Lmq4;

    .line 569
    .line 570
    invoke-virtual {v1}, Lpb5;->e0()Lds4;

    .line 571
    .line 572
    .line 573
    move-result-object v5

    .line 574
    sget-object v7, Le05;->c1:Ld05;

    .line 575
    .line 576
    const/4 v8, 0x0

    .line 577
    invoke-virtual {v5, v8, v7}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 578
    .line 579
    .line 580
    move-result v5

    .line 581
    const-string v10, "_f"

    .line 582
    .line 583
    sget-object v11, Lx55;->p:Lx55;

    .line 584
    .line 585
    if-eqz v5, :cond_24

    .line 586
    .line 587
    iget-object v0, v0, Llq4;->n:Lfu3;

    .line 588
    .line 589
    iget-object v0, v0, Lfu3;->n:Ljava/lang/Object;

    .line 590
    .line 591
    check-cast v0, Lmq4;

    .line 592
    .line 593
    invoke-virtual {v1}, Lpb5;->e0()Lds4;

    .line 594
    .line 595
    .line 596
    move-result-object v0

    .line 597
    invoke-virtual {v0, v8, v7}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 598
    .line 599
    .line 600
    move-result v0

    .line 601
    if-eqz v0, :cond_23

    .line 602
    .line 603
    invoke-virtual {v1, v6}, Lpb5;->a(Ljava/lang/String;)Ly55;

    .line 604
    .line 605
    .line 606
    move-result-object v0

    .line 607
    invoke-virtual {v0, v11}, Ly55;->i(Lx55;)Z

    .line 608
    .line 609
    .line 610
    move-result v0

    .line 611
    const-string v5, "no_data_mode_events"

    .line 612
    .line 613
    if-nez v0, :cond_14

    .line 614
    .line 615
    invoke-virtual {v1}, Lpb5;->f0()Lw35;

    .line 616
    .line 617
    .line 618
    move-result-object v0

    .line 619
    invoke-virtual {v0, v6}, Lw35;->A(Ljava/lang/String;)Z

    .line 620
    .line 621
    .line 622
    move-result v0

    .line 623
    if-eqz v0, :cond_14

    .line 624
    .line 625
    sget-object v0, Le05;->d1:Ld05;

    .line 626
    .line 627
    invoke-virtual {v0, v8}, Ld05;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    .line 629
    .line 630
    move-result-object v0

    .line 631
    check-cast v0, Ljava/lang/String;

    .line 632
    .line 633
    const-string v7, ","

    .line 634
    .line 635
    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object v0

    .line 639
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 640
    .line 641
    .line 642
    move-result-object v7

    .line 643
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 644
    .line 645
    .line 646
    move-result-object v8

    .line 647
    :cond_f
    :goto_13
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 648
    .line 649
    .line 650
    move-result v0

    .line 651
    if-eqz v0, :cond_13

    .line 652
    .line 653
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 654
    .line 655
    .line 656
    move-result-object v0

    .line 657
    check-cast v0, Landroid/util/Pair;

    .line 658
    .line 659
    :try_start_f
    invoke-virtual {v1}, Lpb5;->g0()Lat4;

    .line 660
    .line 661
    .line 662
    move-result-object v12

    .line 663
    iget-object v13, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 664
    .line 665
    check-cast v13, Ljava/lang/Long;

    .line 666
    .line 667
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    .line 668
    .line 669
    .line 670
    move-result-wide v13

    .line 671
    invoke-virtual {v12, v13, v14}, Lat4;->E(J)V

    .line 672
    .line 673
    .line 674
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 675
    .line 676
    check-cast v0, Lu45;

    .line 677
    .line 678
    invoke-virtual {v0}, Lu45;->T1()Ljava/util/List;

    .line 679
    .line 680
    .line 681
    move-result-object v0

    .line 682
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 683
    .line 684
    .line 685
    move-result-object v12

    .line 686
    :cond_10
    :goto_14
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 687
    .line 688
    .line 689
    move-result v0

    .line 690
    if-eqz v0, :cond_f

    .line 691
    .line 692
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 693
    .line 694
    .line 695
    move-result-object v0

    .line 696
    check-cast v0, Lu35;

    .line 697
    .line 698
    invoke-virtual {v0}, Lu35;->y()Ljava/lang/String;

    .line 699
    .line 700
    .line 701
    move-result-object v13

    .line 702
    invoke-interface {v7, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 703
    .line 704
    .line 705
    move-result v13

    .line 706
    if-eqz v13, :cond_10

    .line 707
    .line 708
    invoke-virtual {v0}, Lu35;->y()Ljava/lang/String;

    .line 709
    .line 710
    .line 711
    move-result-object v13

    .line 712
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 713
    .line 714
    .line 715
    move-result v13

    .line 716
    if-nez v13, :cond_11

    .line 717
    .line 718
    invoke-virtual {v0}, Lu35;->y()Ljava/lang/String;

    .line 719
    .line 720
    .line 721
    move-result-object v13

    .line 722
    const-string v14, "_v"

    .line 723
    .line 724
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 725
    .line 726
    .line 727
    move-result v13

    .line 728
    if-eqz v13, :cond_12

    .line 729
    .line 730
    goto :goto_15

    .line 731
    :catch_a
    const/16 v16, 0x22

    .line 732
    .line 733
    goto/16 :goto_16

    .line 734
    .line 735
    :cond_11
    :goto_15
    invoke-virtual {v0}, Lrn4;->k()Lpn4;

    .line 736
    .line 737
    .line 738
    move-result-object v0

    .line 739
    check-cast v0, Ls35;

    .line 740
    .line 741
    invoke-virtual {v1}, Lpb5;->j0()Lub5;

    .line 742
    .line 743
    .line 744
    const-string v13, "_dac"

    .line 745
    .line 746
    const-wide/16 v14, 0x1

    .line 747
    .line 748
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 749
    .line 750
    .line 751
    move-result-object v14

    .line 752
    invoke-static {v0, v13, v14}, Lub5;->D(Ls35;Ljava/lang/String;Ljava/lang/Long;)V

    .line 753
    .line 754
    .line 755
    invoke-virtual {v0}, Lpn4;->d()Lrn4;

    .line 756
    .line 757
    .line 758
    move-result-object v0

    .line 759
    check-cast v0, Lu35;

    .line 760
    .line 761
    :cond_12
    invoke-virtual {v1}, Lpb5;->g0()Lat4;

    .line 762
    .line 763
    .line 764
    move-result-object v13

    .line 765
    invoke-virtual {v13}, Lib0;->v()V

    .line 766
    .line 767
    .line 768
    invoke-virtual {v13}, Lab5;->w()V

    .line 769
    .line 770
    .line 771
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    .line 773
    .line 774
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 775
    .line 776
    .line 777
    iget-object v14, v13, Lib0;->a:Ljava/lang/Object;

    .line 778
    .line 779
    check-cast v14, Lr45;

    .line 780
    .line 781
    invoke-virtual {v14}, Lr45;->c()La25;

    .line 782
    .line 783
    .line 784
    move-result-object v15

    .line 785
    invoke-virtual {v15}, La25;->C()Lx15;

    .line 786
    .line 787
    .line 788
    move-result-object v15
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_a

    .line 789
    const/16 v16, 0x22

    .line 790
    .line 791
    :try_start_10
    const-string v9, "Caching events in NO_DATA mode"

    .line 792
    .line 793
    invoke-virtual {v15, v0, v9}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 794
    .line 795
    .line 796
    new-instance v9, Landroid/content/ContentValues;

    .line 797
    .line 798
    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 799
    .line 800
    .line 801
    const-string v15, "app_id"

    .line 802
    .line 803
    invoke-virtual {v9, v15, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    .line 805
    .line 806
    const-string v15, "name"

    .line 807
    .line 808
    move-object/from16 v17, v0

    .line 809
    .line 810
    invoke-virtual/range {v17 .. v17}, Lu35;->y()Ljava/lang/String;

    .line 811
    .line 812
    .line 813
    move-result-object v0

    .line 814
    invoke-virtual {v9, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    .line 816
    .line 817
    invoke-virtual/range {v17 .. v17}, Lsm4;->a()[B

    .line 818
    .line 819
    .line 820
    move-result-object v0

    .line 821
    invoke-virtual {v9, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 822
    .line 823
    .line 824
    const-string v0, "timestamp_millis"

    .line 825
    .line 826
    invoke-virtual/range {v17 .. v17}, Lu35;->A()J

    .line 827
    .line 828
    .line 829
    move-result-wide v22

    .line 830
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 831
    .line 832
    .line 833
    move-result-object v15

    .line 834
    invoke-virtual {v9, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_c

    .line 835
    .line 836
    .line 837
    :try_start_11
    invoke-virtual {v13}, Lat4;->m0()Landroid/database/sqlite/SQLiteDatabase;

    .line 838
    .line 839
    .line 840
    move-result-object v0

    .line 841
    const/4 v15, 0x0

    .line 842
    invoke-virtual {v0, v5, v15, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 843
    .line 844
    .line 845
    move-result-wide v22

    .line 846
    cmp-long v0, v22, v24

    .line 847
    .line 848
    if-nez v0, :cond_10

    .line 849
    .line 850
    invoke-virtual {v14}, Lr45;->c()La25;

    .line 851
    .line 852
    .line 853
    move-result-object v0

    .line 854
    invoke-virtual {v0}, La25;->z()Lx15;

    .line 855
    .line 856
    .line 857
    move-result-object v0

    .line 858
    const-string v9, "Failed to insert NO_DATA mode event (got -1). appId"

    .line 859
    .line 860
    invoke-static {v6}, La25;->D(Ljava/lang/String;)Ly15;

    .line 861
    .line 862
    .line 863
    move-result-object v14

    .line 864
    invoke-virtual {v0, v14, v9}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_b

    .line 865
    .line 866
    .line 867
    goto/16 :goto_14

    .line 868
    .line 869
    :catch_b
    move-exception v0

    .line 870
    :try_start_12
    iget-object v9, v13, Lib0;->a:Ljava/lang/Object;

    .line 871
    .line 872
    check-cast v9, Lr45;

    .line 873
    .line 874
    invoke-virtual {v9}, Lr45;->c()La25;

    .line 875
    .line 876
    .line 877
    move-result-object v9

    .line 878
    invoke-virtual {v9}, La25;->z()Lx15;

    .line 879
    .line 880
    .line 881
    move-result-object v9

    .line 882
    const-string v13, "Error storing NO_DATA mode event. appId"

    .line 883
    .line 884
    invoke-static {v6}, La25;->D(Ljava/lang/String;)Ly15;

    .line 885
    .line 886
    .line 887
    move-result-object v14

    .line 888
    invoke-virtual {v9, v14, v0, v13}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_c

    .line 889
    .line 890
    .line 891
    goto/16 :goto_14

    .line 892
    .line 893
    :catch_c
    :goto_16
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 894
    .line 895
    .line 896
    move-result-object v0

    .line 897
    iget-object v0, v0, La25;->k:Lx15;

    .line 898
    .line 899
    const-string v9, "Failed handling NO_DATA mode bundles. appId"

    .line 900
    .line 901
    invoke-virtual {v0, v6, v9}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 902
    .line 903
    .line 904
    goto/16 :goto_13

    .line 905
    .line 906
    :cond_13
    const/16 v16, 0x22

    .line 907
    .line 908
    sget-object v12, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 909
    .line 910
    goto/16 :goto_25

    .line 911
    .line 912
    :cond_14
    const/16 v16, 0x22

    .line 913
    .line 914
    new-instance v7, Ljava/util/ArrayList;

    .line 915
    .line 916
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 917
    .line 918
    .line 919
    move-result v0

    .line 920
    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 921
    .line 922
    .line 923
    invoke-virtual {v1}, Lpb5;->g0()Lat4;

    .line 924
    .line 925
    .line 926
    move-result-object v0

    .line 927
    iget-object v8, v0, Lib0;->a:Ljava/lang/Object;

    .line 928
    .line 929
    check-cast v8, Lr45;

    .line 930
    .line 931
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 932
    .line 933
    .line 934
    invoke-virtual {v0}, Lib0;->v()V

    .line 935
    .line 936
    .line 937
    invoke-virtual {v0}, Lab5;->w()V

    .line 938
    .line 939
    .line 940
    new-instance v9, Ljava/util/ArrayList;

    .line 941
    .line 942
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 943
    .line 944
    .line 945
    const-string v13, " NO_DATA mode events. appId"

    .line 946
    .line 947
    const-string v14, "Pruned "

    .line 948
    .line 949
    :try_start_13
    invoke-virtual {v0}, Lat4;->m0()Landroid/database/sqlite/SQLiteDatabase;

    .line 950
    .line 951
    .line 952
    move-result-object v22

    .line 953
    invoke-virtual {v8}, Lr45;->f()Lcom/google/android/gms/common/util/Clock;

    .line 954
    .line 955
    .line 956
    move-result-object v0

    .line 957
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 958
    .line 959
    .line 960
    move-result-wide v31

    .line 961
    const-string v23, "no_data_mode_events"

    .line 962
    .line 963
    filled-new-array {v4}, [Ljava/lang/String;

    .line 964
    .line 965
    .line 966
    move-result-object v24

    .line 967
    const-string v25, "app_id=? AND timestamp_millis <= CAST(? AS INTEGER)"

    .line 968
    .line 969
    invoke-static/range {v31 .. v32}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 970
    .line 971
    .line 972
    move-result-object v0

    .line 973
    filled-new-array {v6, v0}, [Ljava/lang/String;

    .line 974
    .line 975
    .line 976
    move-result-object v26

    .line 977
    const-string v29, "rowid"

    .line 978
    .line 979
    const/16 v30, 0x0

    .line 980
    .line 981
    const/16 v27, 0x0

    .line 982
    .line 983
    const/16 v28, 0x0

    .line 984
    .line 985
    invoke-virtual/range {v22 .. v30}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 986
    .line 987
    .line 988
    move-result-object v4
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_12
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 989
    move-object/from16 v15, v22

    .line 990
    .line 991
    :try_start_14
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 992
    .line 993
    .line 994
    move-result v0
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_11
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 995
    if-eqz v0, :cond_16

    .line 996
    .line 997
    move-object/from16 v17, v8

    .line 998
    .line 999
    :goto_17
    const/4 v8, 0x0

    .line 1000
    :try_start_15
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getBlob(I)[B

    .line 1001
    .line 1002
    .line 1003
    move-result-object v0

    .line 1004
    invoke-static {}, Lu35;->J()Ls35;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v8

    .line 1008
    invoke-static {v8, v0}, Lub5;->g0(Lpn4;[B)Lpn4;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v0

    .line 1012
    check-cast v0, Ls35;

    .line 1013
    .line 1014
    invoke-virtual {v0}, Lpn4;->d()Lrn4;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v0

    .line 1018
    check-cast v0, Lu35;

    .line 1019
    .line 1020
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catch Lfo4; {:try_start_15 .. :try_end_15} :catch_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_d
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 1021
    .line 1022
    .line 1023
    move-object/from16 v22, v4

    .line 1024
    .line 1025
    move-object/from16 v23, v9

    .line 1026
    .line 1027
    goto :goto_18

    .line 1028
    :catchall_2
    move-exception v0

    .line 1029
    move-object/from16 v22, v4

    .line 1030
    .line 1031
    goto/16 :goto_1a

    .line 1032
    .line 1033
    :catch_d
    move-exception v0

    .line 1034
    move-object/from16 v22, v4

    .line 1035
    .line 1036
    goto/16 :goto_1d

    .line 1037
    .line 1038
    :catch_e
    move-exception v0

    .line 1039
    :try_start_16
    invoke-virtual/range {v17 .. v17}, Lr45;->c()La25;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v8

    .line 1043
    iget-object v8, v8, La25;->k:Lx15;
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_16} :catch_d
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    .line 1044
    .line 1045
    move-object/from16 v22, v4

    .line 1046
    .line 1047
    :try_start_17
    const-string v4, "Failed to parse stored NO_DATA mode event, appId"

    .line 1048
    .line 1049
    move-object/from16 v23, v9

    .line 1050
    .line 1051
    invoke-static {v6}, La25;->D(Ljava/lang/String;)Ly15;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v9

    .line 1055
    invoke-virtual {v8, v9, v0, v4}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1056
    .line 1057
    .line 1058
    :goto_18
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    .line 1059
    .line 1060
    .line 1061
    move-result v0

    .line 1062
    if-nez v0, :cond_15

    .line 1063
    .line 1064
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_17} :catch_10
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    .line 1065
    .line 1066
    .line 1067
    :try_start_18
    const-string v0, "app_id=? AND timestamp_millis <= CAST(? AS INTEGER)"

    .line 1068
    .line 1069
    invoke-static/range {v31 .. v32}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v4

    .line 1073
    filled-new-array {v6, v4}, [Ljava/lang/String;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v4

    .line 1077
    invoke-virtual {v15, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1078
    .line 1079
    .line 1080
    move-result v0

    .line 1081
    invoke-virtual/range {v17 .. v17}, Lr45;->c()La25;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v4

    .line 1085
    invoke-virtual {v4}, La25;->C()Lx15;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v4

    .line 1089
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1090
    .line 1091
    .line 1092
    move-result-object v5

    .line 1093
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 1094
    .line 1095
    .line 1096
    move-result v5

    .line 1097
    add-int/lit8 v5, v5, 0x22

    .line 1098
    .line 1099
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1100
    .line 1101
    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1102
    .line 1103
    .line 1104
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1105
    .line 1106
    .line 1107
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1108
    .line 1109
    .line 1110
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    .line 1112
    .line 1113
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1114
    .line 1115
    .line 1116
    move-result-object v0

    .line 1117
    invoke-virtual {v4, v6, v0}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_18
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_18} :catch_f
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    .line 1118
    .line 1119
    .line 1120
    goto :goto_19

    .line 1121
    :catchall_3
    move-exception v0

    .line 1122
    goto :goto_1b

    .line 1123
    :catch_f
    move-exception v0

    .line 1124
    goto :goto_1c

    .line 1125
    :catchall_4
    move-exception v0

    .line 1126
    goto :goto_1a

    .line 1127
    :catch_10
    move-exception v0

    .line 1128
    goto :goto_1d

    .line 1129
    :cond_15
    move-object/from16 v4, v22

    .line 1130
    .line 1131
    move-object/from16 v9, v23

    .line 1132
    .line 1133
    goto/16 :goto_17

    .line 1134
    .line 1135
    :cond_16
    move-object/from16 v22, v4

    .line 1136
    .line 1137
    move-object/from16 v23, v9

    .line 1138
    .line 1139
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 1140
    .line 1141
    .line 1142
    :goto_19
    move-object/from16 v9, v23

    .line 1143
    .line 1144
    goto :goto_1e

    .line 1145
    :goto_1a
    move-object/from16 v14, v22

    .line 1146
    .line 1147
    goto/16 :goto_24

    .line 1148
    .line 1149
    :catch_11
    move-exception v0

    .line 1150
    move-object/from16 v22, v4

    .line 1151
    .line 1152
    move-object/from16 v17, v8

    .line 1153
    .line 1154
    goto :goto_1d

    .line 1155
    :catch_12
    move-exception v0

    .line 1156
    move-object/from16 v17, v8

    .line 1157
    .line 1158
    goto :goto_1c

    .line 1159
    :goto_1b
    const/4 v14, 0x0

    .line 1160
    goto/16 :goto_24

    .line 1161
    .line 1162
    :goto_1c
    const/16 v22, 0x0

    .line 1163
    .line 1164
    :goto_1d
    :try_start_19
    invoke-virtual/range {v17 .. v17}, Lr45;->c()La25;

    .line 1165
    .line 1166
    .line 1167
    move-result-object v4

    .line 1168
    invoke-virtual {v4}, La25;->z()Lx15;

    .line 1169
    .line 1170
    .line 1171
    move-result-object v4

    .line 1172
    const-string v5, "Error flushing NO_DATA mode events. appId"

    .line 1173
    .line 1174
    invoke-static {v6}, La25;->D(Ljava/lang/String;)Ly15;

    .line 1175
    .line 1176
    .line 1177
    move-result-object v8

    .line 1178
    invoke-virtual {v4, v8, v0, v5}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1179
    .line 1180
    .line 1181
    sget-object v9, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    .line 1182
    .line 1183
    if-eqz v22, :cond_17

    .line 1184
    .line 1185
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 1186
    .line 1187
    .line 1188
    :cond_17
    :goto_1e
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1189
    .line 1190
    .line 1191
    move-result-object v0

    .line 1192
    const/4 v4, 0x1

    .line 1193
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1194
    .line 1195
    .line 1196
    move-result v5

    .line 1197
    if-eqz v5, :cond_21

    .line 1198
    .line 1199
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1200
    .line 1201
    .line 1202
    move-result-object v5

    .line 1203
    check-cast v5, Landroid/util/Pair;

    .line 1204
    .line 1205
    iget-object v8, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1206
    .line 1207
    check-cast v8, Lu45;

    .line 1208
    .line 1209
    invoke-virtual {v8}, Lrn4;->k()Lpn4;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v8

    .line 1213
    check-cast v8, Lq45;

    .line 1214
    .line 1215
    if-eqz v4, :cond_18

    .line 1216
    .line 1217
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    .line 1218
    .line 1219
    .line 1220
    move-result v12

    .line 1221
    if-nez v12, :cond_18

    .line 1222
    .line 1223
    invoke-virtual {v8}, Lq45;->T()Ljava/util/List;

    .line 1224
    .line 1225
    .line 1226
    move-result-object v4

    .line 1227
    invoke-virtual {v8}, Lpn4;->b()V

    .line 1228
    .line 1229
    .line 1230
    iget-object v12, v8, Lpn4;->o:Lrn4;

    .line 1231
    .line 1232
    check-cast v12, Lu45;

    .line 1233
    .line 1234
    invoke-virtual {v12}, Lu45;->e0()V

    .line 1235
    .line 1236
    .line 1237
    invoke-virtual {v8}, Lpn4;->b()V

    .line 1238
    .line 1239
    .line 1240
    iget-object v12, v8, Lpn4;->o:Lrn4;

    .line 1241
    .line 1242
    check-cast v12, Lu45;

    .line 1243
    .line 1244
    invoke-virtual {v12, v9}, Lu45;->d0(Ljava/lang/Iterable;)V

    .line 1245
    .line 1246
    .line 1247
    invoke-virtual {v8}, Lpn4;->b()V

    .line 1248
    .line 1249
    .line 1250
    iget-object v12, v8, Lpn4;->o:Lrn4;

    .line 1251
    .line 1252
    check-cast v12, Lu45;

    .line 1253
    .line 1254
    invoke-virtual {v12, v4}, Lu45;->d0(Ljava/lang/Iterable;)V

    .line 1255
    .line 1256
    .line 1257
    const/4 v4, 0x0

    .line 1258
    :cond_18
    invoke-static {}, Lo35;->u()Le35;

    .line 1259
    .line 1260
    .line 1261
    move-result-object v12

    .line 1262
    invoke-virtual {v1}, Lpb5;->f0()Lw35;

    .line 1263
    .line 1264
    .line 1265
    move-result-object v13

    .line 1266
    invoke-virtual {v13, v6}, Lw35;->R(Ljava/lang/String;)Lx05;

    .line 1267
    .line 1268
    .line 1269
    move-result-object v13

    .line 1270
    new-instance v14, Ljava/util/ArrayList;

    .line 1271
    .line 1272
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1273
    .line 1274
    .line 1275
    if-nez v13, :cond_1a

    .line 1276
    .line 1277
    :cond_19
    move-object/from16 v17, v0

    .line 1278
    .line 1279
    move/from16 v23, v4

    .line 1280
    .line 1281
    move-object/from16 v22, v9

    .line 1282
    .line 1283
    goto/16 :goto_23

    .line 1284
    .line 1285
    :cond_1a
    invoke-virtual {v13}, Lx05;->t()Ljava/util/List;

    .line 1286
    .line 1287
    .line 1288
    move-result-object v13

    .line 1289
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1290
    .line 1291
    .line 1292
    move-result-object v13

    .line 1293
    :goto_20
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 1294
    .line 1295
    .line 1296
    move-result v15

    .line 1297
    if-eqz v15, :cond_19

    .line 1298
    .line 1299
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1300
    .line 1301
    .line 1302
    move-result-object v15

    .line 1303
    check-cast v15, La05;

    .line 1304
    .line 1305
    move-object/from16 v17, v0

    .line 1306
    .line 1307
    invoke-static {}, Ll35;->t()Lj35;

    .line 1308
    .line 1309
    .line 1310
    move-result-object v0

    .line 1311
    invoke-virtual {v15}, La05;->t()I

    .line 1312
    .line 1313
    .line 1314
    move-result v22

    .line 1315
    move/from16 v23, v4

    .line 1316
    .line 1317
    add-int/lit8 v4, v22, -0x1

    .line 1318
    .line 1319
    move-object/from16 v22, v9

    .line 1320
    .line 1321
    const/4 v9, 0x1

    .line 1322
    if-eq v4, v9, :cond_1e

    .line 1323
    .line 1324
    const/4 v9, 0x2

    .line 1325
    if-eq v4, v9, :cond_1d

    .line 1326
    .line 1327
    const/4 v9, 0x4

    .line 1328
    move-object/from16 v25, v13

    .line 1329
    .line 1330
    const/4 v13, 0x3

    .line 1331
    if-eq v4, v13, :cond_1c

    .line 1332
    .line 1333
    if-eq v4, v9, :cond_1b

    .line 1334
    .line 1335
    const/4 v4, 0x1

    .line 1336
    goto :goto_21

    .line 1337
    :cond_1b
    const/4 v4, 0x5

    .line 1338
    goto :goto_21

    .line 1339
    :cond_1c
    move v4, v9

    .line 1340
    goto :goto_21

    .line 1341
    :cond_1d
    move-object/from16 v25, v13

    .line 1342
    .line 1343
    const/4 v13, 0x3

    .line 1344
    move v4, v13

    .line 1345
    goto :goto_21

    .line 1346
    :cond_1e
    move-object/from16 v25, v13

    .line 1347
    .line 1348
    const/4 v13, 0x3

    .line 1349
    const/4 v4, 0x2

    .line 1350
    :goto_21
    invoke-virtual {v0, v4}, Lj35;->g(I)V

    .line 1351
    .line 1352
    .line 1353
    invoke-virtual {v15}, La05;->v()I

    .line 1354
    .line 1355
    .line 1356
    move-result v4

    .line 1357
    add-int/lit8 v4, v4, -0x1

    .line 1358
    .line 1359
    const/4 v9, 0x1

    .line 1360
    if-eq v4, v9, :cond_1f

    .line 1361
    .line 1362
    const/4 v9, 0x2

    .line 1363
    if-eq v4, v9, :cond_20

    .line 1364
    .line 1365
    const/4 v13, 0x1

    .line 1366
    goto :goto_22

    .line 1367
    :cond_1f
    const/4 v13, 0x2

    .line 1368
    :cond_20
    :goto_22
    invoke-virtual {v0, v13}, Lj35;->h(I)V

    .line 1369
    .line 1370
    .line 1371
    invoke-virtual {v0}, Lpn4;->d()Lrn4;

    .line 1372
    .line 1373
    .line 1374
    move-result-object v0

    .line 1375
    check-cast v0, Ll35;

    .line 1376
    .line 1377
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1378
    .line 1379
    .line 1380
    move-object/from16 v0, v17

    .line 1381
    .line 1382
    move-object/from16 v9, v22

    .line 1383
    .line 1384
    move/from16 v4, v23

    .line 1385
    .line 1386
    move-object/from16 v13, v25

    .line 1387
    .line 1388
    goto :goto_20

    .line 1389
    :goto_23
    invoke-virtual {v12, v14}, Le35;->g(Ljava/util/ArrayList;)V

    .line 1390
    .line 1391
    .line 1392
    invoke-virtual {v8, v12}, Lq45;->C(Le35;)V

    .line 1393
    .line 1394
    .line 1395
    invoke-virtual {v8}, Lpn4;->d()Lrn4;

    .line 1396
    .line 1397
    .line 1398
    move-result-object v0

    .line 1399
    check-cast v0, Lu45;

    .line 1400
    .line 1401
    iget-object v4, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1402
    .line 1403
    check-cast v4, Ljava/lang/Long;

    .line 1404
    .line 1405
    invoke-static {v0, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1406
    .line 1407
    .line 1408
    move-result-object v0

    .line 1409
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1410
    .line 1411
    .line 1412
    move-object/from16 v0, v17

    .line 1413
    .line 1414
    move-object/from16 v9, v22

    .line 1415
    .line 1416
    move/from16 v4, v23

    .line 1417
    .line 1418
    goto/16 :goto_1f

    .line 1419
    .line 1420
    :cond_21
    move-object v12, v7

    .line 1421
    goto :goto_25

    .line 1422
    :goto_24
    if-eqz v14, :cond_22

    .line 1423
    .line 1424
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1425
    .line 1426
    .line 1427
    :cond_22
    throw v0

    .line 1428
    :cond_23
    const/16 v16, 0x22

    .line 1429
    .line 1430
    :goto_25
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    .line 1431
    .line 1432
    .line 1433
    move-result v0

    .line 1434
    if-nez v0, :cond_50

    .line 1435
    .line 1436
    goto :goto_26

    .line 1437
    :cond_24
    const/16 v16, 0x22

    .line 1438
    .line 1439
    :goto_26
    invoke-virtual {v1, v6}, Lpb5;->a(Ljava/lang/String;)Ly55;

    .line 1440
    .line 1441
    .line 1442
    move-result-object v0

    .line 1443
    sget-object v4, Lx55;->o:Lx55;

    .line 1444
    .line 1445
    invoke-virtual {v0, v4}, Ly55;->i(Lx55;)Z

    .line 1446
    .line 1447
    .line 1448
    move-result v0

    .line 1449
    if-eqz v0, :cond_29

    .line 1450
    .line 1451
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1452
    .line 1453
    .line 1454
    move-result-object v0

    .line 1455
    :cond_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1456
    .line 1457
    .line 1458
    move-result v5

    .line 1459
    if-eqz v5, :cond_26

    .line 1460
    .line 1461
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1462
    .line 1463
    .line 1464
    move-result-object v5

    .line 1465
    check-cast v5, Landroid/util/Pair;

    .line 1466
    .line 1467
    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1468
    .line 1469
    check-cast v5, Lu45;

    .line 1470
    .line 1471
    invoke-virtual {v5}, Lu45;->z()Ljava/lang/String;

    .line 1472
    .line 1473
    .line 1474
    move-result-object v7

    .line 1475
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 1476
    .line 1477
    .line 1478
    move-result v7

    .line 1479
    if-nez v7, :cond_25

    .line 1480
    .line 1481
    invoke-virtual {v5}, Lu45;->z()Ljava/lang/String;

    .line 1482
    .line 1483
    .line 1484
    move-result-object v0

    .line 1485
    goto :goto_27

    .line 1486
    :cond_26
    const/4 v0, 0x0

    .line 1487
    :goto_27
    if-eqz v0, :cond_29

    .line 1488
    .line 1489
    const/4 v8, 0x0

    .line 1490
    :goto_28
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 1491
    .line 1492
    .line 1493
    move-result v5

    .line 1494
    if-ge v8, v5, :cond_29

    .line 1495
    .line 1496
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1497
    .line 1498
    .line 1499
    move-result-object v5

    .line 1500
    check-cast v5, Landroid/util/Pair;

    .line 1501
    .line 1502
    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1503
    .line 1504
    check-cast v5, Lu45;

    .line 1505
    .line 1506
    invoke-virtual {v5}, Lu45;->z()Ljava/lang/String;

    .line 1507
    .line 1508
    .line 1509
    move-result-object v7

    .line 1510
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 1511
    .line 1512
    .line 1513
    move-result v7

    .line 1514
    if-eqz v7, :cond_28

    .line 1515
    .line 1516
    :cond_27
    const/4 v9, 0x0

    .line 1517
    goto :goto_29

    .line 1518
    :cond_28
    invoke-virtual {v5}, Lu45;->z()Ljava/lang/String;

    .line 1519
    .line 1520
    .line 1521
    move-result-object v5

    .line 1522
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1523
    .line 1524
    .line 1525
    move-result v5

    .line 1526
    if-nez v5, :cond_27

    .line 1527
    .line 1528
    const/4 v9, 0x0

    .line 1529
    invoke-interface {v12, v9, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 1530
    .line 1531
    .line 1532
    move-result-object v12

    .line 1533
    goto :goto_2a

    .line 1534
    :goto_29
    add-int/lit8 v8, v8, 0x1

    .line 1535
    .line 1536
    goto :goto_28

    .line 1537
    :cond_29
    const/4 v9, 0x0

    .line 1538
    :goto_2a
    invoke-static {}, Lp45;->A()Li45;

    .line 1539
    .line 1540
    .line 1541
    move-result-object v0

    .line 1542
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 1543
    .line 1544
    .line 1545
    move-result v5

    .line 1546
    new-instance v7, Ljava/util/ArrayList;

    .line 1547
    .line 1548
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 1549
    .line 1550
    .line 1551
    move-result v8

    .line 1552
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 1553
    .line 1554
    .line 1555
    invoke-virtual {v1}, Lpb5;->e0()Lds4;

    .line 1556
    .line 1557
    .line 1558
    move-result-object v8

    .line 1559
    invoke-virtual {v8, v6}, Lds4;->w(Ljava/lang/String;)Z

    .line 1560
    .line 1561
    .line 1562
    move-result v8

    .line 1563
    if-eqz v8, :cond_2a

    .line 1564
    .line 1565
    invoke-virtual {v1, v6}, Lpb5;->a(Ljava/lang/String;)Ly55;

    .line 1566
    .line 1567
    .line 1568
    move-result-object v8

    .line 1569
    invoke-virtual {v8, v4}, Ly55;->i(Lx55;)Z

    .line 1570
    .line 1571
    .line 1572
    move-result v8

    .line 1573
    if-eqz v8, :cond_2a

    .line 1574
    .line 1575
    const/4 v8, 0x1

    .line 1576
    goto :goto_2b

    .line 1577
    :cond_2a
    move v8, v9

    .line 1578
    :goto_2b
    invoke-virtual {v1, v6}, Lpb5;->a(Ljava/lang/String;)Ly55;

    .line 1579
    .line 1580
    .line 1581
    move-result-object v13

    .line 1582
    invoke-virtual {v13, v4}, Ly55;->i(Lx55;)Z

    .line 1583
    .line 1584
    .line 1585
    move-result v4

    .line 1586
    invoke-virtual {v1, v6}, Lpb5;->a(Ljava/lang/String;)Ly55;

    .line 1587
    .line 1588
    .line 1589
    move-result-object v13

    .line 1590
    invoke-virtual {v13, v11}, Ly55;->i(Lx55;)Z

    .line 1591
    .line 1592
    .line 1593
    move-result v11

    .line 1594
    sget-object v13, Lmr4;->o:Lmr4;

    .line 1595
    .line 1596
    iget-object v13, v13, Lmr4;->n:Lfu3;

    .line 1597
    .line 1598
    iget-object v13, v13, Lfu3;->n:Ljava/lang/Object;

    .line 1599
    .line 1600
    check-cast v13, Lnr4;

    .line 1601
    .line 1602
    invoke-virtual {v1}, Lpb5;->e0()Lds4;

    .line 1603
    .line 1604
    .line 1605
    move-result-object v13

    .line 1606
    sget-object v14, Le05;->M0:Ld05;

    .line 1607
    .line 1608
    invoke-virtual {v13, v6, v14}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 1609
    .line 1610
    .line 1611
    move-result v13

    .line 1612
    iget-object v14, v1, Lpb5;->j:Leb5;

    .line 1613
    .line 1614
    invoke-virtual {v14, v6}, Leb5;->w(Ljava/lang/String;)Lcb5;

    .line 1615
    .line 1616
    .line 1617
    move-result-object v15

    .line 1618
    move/from16 v17, v4

    .line 1619
    .line 1620
    :goto_2c
    iget-object v4, v1, Lpb5;->l:Lr45;

    .line 1621
    .line 1622
    if-ge v9, v5, :cond_3c

    .line 1623
    .line 1624
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1625
    .line 1626
    .line 1627
    move-result-object v22

    .line 1628
    move-object/from16 v23, v4

    .line 1629
    .line 1630
    move-object/from16 v4, v22

    .line 1631
    .line 1632
    check-cast v4, Landroid/util/Pair;

    .line 1633
    .line 1634
    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1635
    .line 1636
    check-cast v4, Lu45;

    .line 1637
    .line 1638
    invoke-virtual {v4}, Lrn4;->k()Lpn4;

    .line 1639
    .line 1640
    .line 1641
    move-result-object v4

    .line 1642
    check-cast v4, Lq45;

    .line 1643
    .line 1644
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1645
    .line 1646
    .line 1647
    move-result-object v22

    .line 1648
    move/from16 v24, v5

    .line 1649
    .line 1650
    move-object/from16 v5, v22

    .line 1651
    .line 1652
    check-cast v5, Landroid/util/Pair;

    .line 1653
    .line 1654
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1655
    .line 1656
    check-cast v5, Ljava/lang/Long;

    .line 1657
    .line 1658
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1659
    .line 1660
    .line 1661
    invoke-virtual {v1}, Lpb5;->e0()Lds4;

    .line 1662
    .line 1663
    .line 1664
    move-result-object v5

    .line 1665
    invoke-virtual {v5}, Lds4;->B()V

    .line 1666
    .line 1667
    .line 1668
    invoke-virtual {v4}, Lq45;->r()V

    .line 1669
    .line 1670
    .line 1671
    invoke-virtual {v4}, Lpn4;->b()V

    .line 1672
    .line 1673
    .line 1674
    iget-object v5, v4, Lpn4;->o:Lrn4;

    .line 1675
    .line 1676
    check-cast v5, Lu45;

    .line 1677
    .line 1678
    invoke-virtual {v5, v2, v3}, Lu45;->j0(J)V

    .line 1679
    .line 1680
    .line 1681
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1682
    .line 1683
    .line 1684
    invoke-virtual {v4}, Lq45;->H()V

    .line 1685
    .line 1686
    .line 1687
    if-nez v8, :cond_2b

    .line 1688
    .line 1689
    invoke-virtual {v4}, Lpn4;->b()V

    .line 1690
    .line 1691
    .line 1692
    iget-object v5, v4, Lpn4;->o:Lrn4;

    .line 1693
    .line 1694
    check-cast v5, Lu45;

    .line 1695
    .line 1696
    invoke-virtual {v5}, Lu45;->W0()V

    .line 1697
    .line 1698
    .line 1699
    :cond_2b
    if-nez v17, :cond_2c

    .line 1700
    .line 1701
    invoke-virtual {v4}, Lpn4;->b()V

    .line 1702
    .line 1703
    .line 1704
    iget-object v5, v4, Lpn4;->o:Lrn4;

    .line 1705
    .line 1706
    check-cast v5, Lu45;

    .line 1707
    .line 1708
    invoke-virtual {v5}, Lu45;->D1()V

    .line 1709
    .line 1710
    .line 1711
    invoke-virtual {v4}, Lpn4;->b()V

    .line 1712
    .line 1713
    .line 1714
    iget-object v5, v4, Lpn4;->o:Lrn4;

    .line 1715
    .line 1716
    check-cast v5, Lu45;

    .line 1717
    .line 1718
    invoke-virtual {v5}, Lu45;->F1()V

    .line 1719
    .line 1720
    .line 1721
    :cond_2c
    if-nez v11, :cond_2d

    .line 1722
    .line 1723
    invoke-virtual {v4}, Lpn4;->b()V

    .line 1724
    .line 1725
    .line 1726
    iget-object v5, v4, Lpn4;->o:Lrn4;

    .line 1727
    .line 1728
    check-cast v5, Lu45;

    .line 1729
    .line 1730
    invoke-virtual {v5}, Lu45;->H1()V

    .line 1731
    .line 1732
    .line 1733
    :cond_2d
    invoke-virtual {v1, v6, v4}, Lpb5;->v(Ljava/lang/String;Lq45;)V

    .line 1734
    .line 1735
    .line 1736
    if-nez v13, :cond_2e

    .line 1737
    .line 1738
    invoke-virtual {v4}, Lpn4;->b()V

    .line 1739
    .line 1740
    .line 1741
    iget-object v5, v4, Lpn4;->o:Lrn4;

    .line 1742
    .line 1743
    check-cast v5, Lu45;

    .line 1744
    .line 1745
    invoke-virtual {v5}, Lu45;->d1()V

    .line 1746
    .line 1747
    .line 1748
    :cond_2e
    if-nez v11, :cond_2f

    .line 1749
    .line 1750
    invoke-virtual {v4}, Lpn4;->b()V

    .line 1751
    .line 1752
    .line 1753
    iget-object v5, v4, Lpn4;->o:Lrn4;

    .line 1754
    .line 1755
    check-cast v5, Lu45;

    .line 1756
    .line 1757
    invoke-virtual {v5}, Lu45;->P1()V

    .line 1758
    .line 1759
    .line 1760
    :cond_2f
    iget-object v5, v4, Lpn4;->o:Lrn4;

    .line 1761
    .line 1762
    check-cast v5, Lu45;

    .line 1763
    .line 1764
    invoke-virtual {v5}, Lu45;->z()Ljava/lang/String;

    .line 1765
    .line 1766
    .line 1767
    move-result-object v5

    .line 1768
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1769
    .line 1770
    .line 1771
    move-result v22

    .line 1772
    if-nez v22, :cond_31

    .line 1773
    .line 1774
    move/from16 v22, v8

    .line 1775
    .line 1776
    const-string v8, "00000000-0000-0000-0000-000000000000"

    .line 1777
    .line 1778
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1779
    .line 1780
    .line 1781
    move-result v5

    .line 1782
    if-eqz v5, :cond_30

    .line 1783
    .line 1784
    goto :goto_2d

    .line 1785
    :cond_30
    move/from16 v27, v9

    .line 1786
    .line 1787
    move/from16 v29, v11

    .line 1788
    .line 1789
    move-object/from16 v28, v12

    .line 1790
    .line 1791
    move/from16 v30, v13

    .line 1792
    .line 1793
    goto/16 :goto_30

    .line 1794
    .line 1795
    :cond_31
    move/from16 v22, v8

    .line 1796
    .line 1797
    :goto_2d
    new-instance v5, Ljava/util/ArrayList;

    .line 1798
    .line 1799
    invoke-virtual {v4}, Lq45;->T()Ljava/util/List;

    .line 1800
    .line 1801
    .line 1802
    move-result-object v8

    .line 1803
    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1804
    .line 1805
    .line 1806
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1807
    .line 1808
    .line 1809
    move-result-object v8

    .line 1810
    move-object/from16 v26, v8

    .line 1811
    .line 1812
    move/from16 v27, v9

    .line 1813
    .line 1814
    const/4 v8, 0x0

    .line 1815
    const/4 v9, 0x0

    .line 1816
    const/16 v23, 0x0

    .line 1817
    .line 1818
    const/16 v25, 0x0

    .line 1819
    .line 1820
    :goto_2e
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    .line 1821
    .line 1822
    .line 1823
    move-result v28

    .line 1824
    if-eqz v28, :cond_36

    .line 1825
    .line 1826
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1827
    .line 1828
    .line 1829
    move-result-object v28

    .line 1830
    move/from16 v29, v11

    .line 1831
    .line 1832
    move-object/from16 v11, v28

    .line 1833
    .line 1834
    check-cast v11, Lu35;

    .line 1835
    .line 1836
    move-object/from16 v28, v12

    .line 1837
    .line 1838
    invoke-virtual {v11}, Lu35;->y()Ljava/lang/String;

    .line 1839
    .line 1840
    .line 1841
    move-result-object v12

    .line 1842
    move/from16 v30, v13

    .line 1843
    .line 1844
    const-string v13, "_fx"

    .line 1845
    .line 1846
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1847
    .line 1848
    .line 1849
    move-result v12

    .line 1850
    if-eqz v12, :cond_32

    .line 1851
    .line 1852
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->remove()V

    .line 1853
    .line 1854
    .line 1855
    move-object/from16 v12, v28

    .line 1856
    .line 1857
    move/from16 v11, v29

    .line 1858
    .line 1859
    move/from16 v13, v30

    .line 1860
    .line 1861
    const/16 v23, 0x1

    .line 1862
    .line 1863
    :goto_2f
    const/16 v25, 0x1

    .line 1864
    .line 1865
    goto :goto_2e

    .line 1866
    :cond_32
    invoke-virtual {v11}, Lu35;->y()Ljava/lang/String;

    .line 1867
    .line 1868
    .line 1869
    move-result-object v12

    .line 1870
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1871
    .line 1872
    .line 1873
    move-result v12

    .line 1874
    if-eqz v12, :cond_35

    .line 1875
    .line 1876
    invoke-virtual {v1}, Lpb5;->j0()Lub5;

    .line 1877
    .line 1878
    .line 1879
    const-string v12, "_pfo"

    .line 1880
    .line 1881
    invoke-static {v12, v11}, Lub5;->F(Ljava/lang/String;Lu35;)Lc45;

    .line 1882
    .line 1883
    .line 1884
    move-result-object v12

    .line 1885
    if-eqz v12, :cond_33

    .line 1886
    .line 1887
    invoke-virtual {v12}, Lc45;->y()J

    .line 1888
    .line 1889
    .line 1890
    move-result-wide v12

    .line 1891
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1892
    .line 1893
    .line 1894
    move-result-object v8

    .line 1895
    :cond_33
    invoke-virtual {v1}, Lpb5;->j0()Lub5;

    .line 1896
    .line 1897
    .line 1898
    const-string v12, "_uwa"

    .line 1899
    .line 1900
    invoke-static {v12, v11}, Lub5;->F(Ljava/lang/String;Lu35;)Lc45;

    .line 1901
    .line 1902
    .line 1903
    move-result-object v11

    .line 1904
    if-eqz v11, :cond_34

    .line 1905
    .line 1906
    invoke-virtual {v11}, Lc45;->y()J

    .line 1907
    .line 1908
    .line 1909
    move-result-wide v11

    .line 1910
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1911
    .line 1912
    .line 1913
    move-result-object v9

    .line 1914
    :cond_34
    move-object/from16 v12, v28

    .line 1915
    .line 1916
    move/from16 v11, v29

    .line 1917
    .line 1918
    move/from16 v13, v30

    .line 1919
    .line 1920
    goto :goto_2f

    .line 1921
    :cond_35
    move-object/from16 v12, v28

    .line 1922
    .line 1923
    move/from16 v11, v29

    .line 1924
    .line 1925
    move/from16 v13, v30

    .line 1926
    .line 1927
    goto :goto_2e

    .line 1928
    :cond_36
    move/from16 v29, v11

    .line 1929
    .line 1930
    move-object/from16 v28, v12

    .line 1931
    .line 1932
    move/from16 v30, v13

    .line 1933
    .line 1934
    if-eqz v23, :cond_37

    .line 1935
    .line 1936
    invoke-virtual {v4}, Lpn4;->b()V

    .line 1937
    .line 1938
    .line 1939
    iget-object v11, v4, Lpn4;->o:Lrn4;

    .line 1940
    .line 1941
    check-cast v11, Lu45;

    .line 1942
    .line 1943
    invoke-virtual {v11}, Lu45;->e0()V

    .line 1944
    .line 1945
    .line 1946
    invoke-virtual {v4}, Lpn4;->b()V

    .line 1947
    .line 1948
    .line 1949
    iget-object v11, v4, Lpn4;->o:Lrn4;

    .line 1950
    .line 1951
    check-cast v11, Lu45;

    .line 1952
    .line 1953
    invoke-virtual {v11, v5}, Lu45;->d0(Ljava/lang/Iterable;)V

    .line 1954
    .line 1955
    .line 1956
    :cond_37
    if-eqz v25, :cond_38

    .line 1957
    .line 1958
    invoke-virtual {v4}, Lq45;->n()Ljava/lang/String;

    .line 1959
    .line 1960
    .line 1961
    move-result-object v5

    .line 1962
    const/4 v11, 0x1

    .line 1963
    invoke-virtual {v1, v5, v11, v8, v9}, Lpb5;->u(Ljava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V

    .line 1964
    .line 1965
    .line 1966
    :cond_38
    :goto_30
    invoke-virtual {v4}, Lq45;->U()I

    .line 1967
    .line 1968
    .line 1969
    move-result v5

    .line 1970
    if-nez v5, :cond_39

    .line 1971
    .line 1972
    goto :goto_31

    .line 1973
    :cond_39
    invoke-virtual {v1}, Lpb5;->e0()Lds4;

    .line 1974
    .line 1975
    .line 1976
    move-result-object v5

    .line 1977
    sget-object v8, Le05;->C0:Ld05;

    .line 1978
    .line 1979
    invoke-virtual {v5, v6, v8}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 1980
    .line 1981
    .line 1982
    move-result v5

    .line 1983
    if-eqz v5, :cond_3a

    .line 1984
    .line 1985
    invoke-virtual {v4}, Lpn4;->d()Lrn4;

    .line 1986
    .line 1987
    .line 1988
    move-result-object v5

    .line 1989
    check-cast v5, Lu45;

    .line 1990
    .line 1991
    invoke-virtual {v5}, Lsm4;->a()[B

    .line 1992
    .line 1993
    .line 1994
    move-result-object v5

    .line 1995
    invoke-virtual {v1}, Lpb5;->j0()Lub5;

    .line 1996
    .line 1997
    .line 1998
    move-result-object v8

    .line 1999
    invoke-virtual {v8, v5}, Lub5;->e0([B)J

    .line 2000
    .line 2001
    .line 2002
    move-result-wide v8

    .line 2003
    invoke-virtual {v4, v8, v9}, Lq45;->O(J)V

    .line 2004
    .line 2005
    .line 2006
    :cond_3a
    invoke-virtual {v15}, Lcb5;->b()Lf55;

    .line 2007
    .line 2008
    .line 2009
    move-result-object v5

    .line 2010
    if-eqz v5, :cond_3b

    .line 2011
    .line 2012
    invoke-virtual {v4, v5}, Lq45;->A(Lf55;)V

    .line 2013
    .line 2014
    .line 2015
    :cond_3b
    invoke-virtual {v0}, Lpn4;->b()V

    .line 2016
    .line 2017
    .line 2018
    iget-object v5, v0, Lpn4;->o:Lrn4;

    .line 2019
    .line 2020
    check-cast v5, Lp45;

    .line 2021
    .line 2022
    invoke-virtual {v4}, Lpn4;->d()Lrn4;

    .line 2023
    .line 2024
    .line 2025
    move-result-object v4

    .line 2026
    check-cast v4, Lu45;

    .line 2027
    .line 2028
    invoke-virtual {v5, v4}, Lp45;->D(Lu45;)V

    .line 2029
    .line 2030
    .line 2031
    :goto_31
    add-int/lit8 v9, v27, 0x1

    .line 2032
    .line 2033
    move/from16 v8, v22

    .line 2034
    .line 2035
    move/from16 v5, v24

    .line 2036
    .line 2037
    move-object/from16 v12, v28

    .line 2038
    .line 2039
    move/from16 v11, v29

    .line 2040
    .line 2041
    move/from16 v13, v30

    .line 2042
    .line 2043
    goto/16 :goto_2c

    .line 2044
    .line 2045
    :cond_3c
    move-object/from16 v23, v4

    .line 2046
    .line 2047
    iget-object v4, v0, Lpn4;->o:Lrn4;

    .line 2048
    .line 2049
    check-cast v4, Lp45;

    .line 2050
    .line 2051
    invoke-virtual {v4}, Lp45;->u()I

    .line 2052
    .line 2053
    .line 2054
    move-result v4

    .line 2055
    if-nez v4, :cond_3d

    .line 2056
    .line 2057
    invoke-virtual {v1, v7}, Lpb5;->p(Ljava/util/ArrayList;)V

    .line 2058
    .line 2059
    .line 2060
    sget-object v7, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 2061
    .line 2062
    const/4 v8, 0x0

    .line 2063
    const/4 v2, 0x0

    .line 2064
    const/16 v3, 0xcc

    .line 2065
    .line 2066
    const/4 v4, 0x0

    .line 2067
    const/4 v5, 0x0

    .line 2068
    invoke-virtual/range {v1 .. v8}, Lpb5;->z(ZILjava/lang/Throwable;[BLjava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    .line 2069
    .line 2070
    .line 2071
    return-void

    .line 2072
    :cond_3d
    invoke-virtual {v0}, Lpn4;->d()Lrn4;

    .line 2073
    .line 2074
    .line 2075
    move-result-object v4

    .line 2076
    check-cast v4, Lp45;

    .line 2077
    .line 2078
    new-instance v5, Ljava/util/ArrayList;

    .line 2079
    .line 2080
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2081
    .line 2082
    .line 2083
    iget-object v8, v15, Lcb5;->c:Lv75;

    .line 2084
    .line 2085
    sget-object v9, Lv75;->r:Lv75;

    .line 2086
    .line 2087
    if-ne v8, v9, :cond_3e

    .line 2088
    .line 2089
    const/4 v9, 0x1

    .line 2090
    goto :goto_32

    .line 2091
    :cond_3e
    const/4 v9, 0x0

    .line 2092
    :goto_32
    sget-object v10, Lv75;->q:Lv75;

    .line 2093
    .line 2094
    if-eq v8, v10, :cond_40

    .line 2095
    .line 2096
    if-eqz v9, :cond_3f

    .line 2097
    .line 2098
    const/4 v9, 0x1

    .line 2099
    goto :goto_34

    .line 2100
    :cond_3f
    const/4 v13, 0x0

    .line 2101
    :goto_33
    move-object v0, v5

    .line 2102
    goto/16 :goto_3c

    .line 2103
    .line 2104
    :cond_40
    :goto_34
    invoke-virtual {v0}, Lpn4;->d()Lrn4;

    .line 2105
    .line 2106
    .line 2107
    move-result-object v4

    .line 2108
    check-cast v4, Lp45;

    .line 2109
    .line 2110
    invoke-virtual {v4}, Lp45;->t()Ljava/util/List;

    .line 2111
    .line 2112
    .line 2113
    move-result-object v4

    .line 2114
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2115
    .line 2116
    .line 2117
    move-result-object v4

    .line 2118
    :cond_41
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 2119
    .line 2120
    .line 2121
    move-result v8

    .line 2122
    if-eqz v8, :cond_42

    .line 2123
    .line 2124
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2125
    .line 2126
    .line 2127
    move-result-object v8

    .line 2128
    check-cast v8, Lu45;

    .line 2129
    .line 2130
    invoke-virtual {v8}, Lu45;->R()Z

    .line 2131
    .line 2132
    .line 2133
    move-result v8

    .line 2134
    if-eqz v8, :cond_41

    .line 2135
    .line 2136
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 2137
    .line 2138
    .line 2139
    move-result-object v4

    .line 2140
    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 2141
    .line 2142
    .line 2143
    move-result-object v4

    .line 2144
    goto :goto_35

    .line 2145
    :cond_42
    const/4 v4, 0x0

    .line 2146
    :goto_35
    invoke-virtual {v0}, Lpn4;->d()Lrn4;

    .line 2147
    .line 2148
    .line 2149
    move-result-object v8

    .line 2150
    check-cast v8, Lp45;

    .line 2151
    .line 2152
    invoke-virtual {v1}, Lpb5;->d()Lj45;

    .line 2153
    .line 2154
    .line 2155
    move-result-object v10

    .line 2156
    invoke-virtual {v10}, Lj45;->v()V

    .line 2157
    .line 2158
    .line 2159
    invoke-virtual {v1}, Lpb5;->l0()V

    .line 2160
    .line 2161
    .line 2162
    invoke-static {v8}, Lp45;->B(Lp45;)Li45;

    .line 2163
    .line 2164
    .line 2165
    move-result-object v10

    .line 2166
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2167
    .line 2168
    .line 2169
    move-result v11

    .line 2170
    if-nez v11, :cond_43

    .line 2171
    .line 2172
    invoke-virtual {v10}, Lpn4;->b()V

    .line 2173
    .line 2174
    .line 2175
    iget-object v11, v10, Lpn4;->o:Lrn4;

    .line 2176
    .line 2177
    check-cast v11, Lp45;

    .line 2178
    .line 2179
    invoke-virtual {v11, v4}, Lp45;->G(Ljava/lang/String;)V

    .line 2180
    .line 2181
    .line 2182
    :cond_43
    invoke-virtual {v1}, Lpb5;->f0()Lw35;

    .line 2183
    .line 2184
    .line 2185
    move-result-object v11

    .line 2186
    invoke-virtual {v11, v6}, Lw35;->I(Ljava/lang/String;)Ljava/lang/String;

    .line 2187
    .line 2188
    .line 2189
    move-result-object v11

    .line 2190
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2191
    .line 2192
    .line 2193
    move-result v12

    .line 2194
    if-nez v12, :cond_44

    .line 2195
    .line 2196
    invoke-virtual {v10, v11}, Li45;->h(Ljava/lang/String;)V

    .line 2197
    .line 2198
    .line 2199
    :cond_44
    new-instance v11, Ljava/util/ArrayList;

    .line 2200
    .line 2201
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2202
    .line 2203
    .line 2204
    invoke-virtual {v8}, Lp45;->t()Ljava/util/List;

    .line 2205
    .line 2206
    .line 2207
    move-result-object v8

    .line 2208
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2209
    .line 2210
    .line 2211
    move-result-object v8

    .line 2212
    :goto_36
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 2213
    .line 2214
    .line 2215
    move-result v12

    .line 2216
    if-eqz v12, :cond_45

    .line 2217
    .line 2218
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2219
    .line 2220
    .line 2221
    move-result-object v12

    .line 2222
    check-cast v12, Lu45;

    .line 2223
    .line 2224
    invoke-static {v12}, Lu45;->Z(Lu45;)Lq45;

    .line 2225
    .line 2226
    .line 2227
    move-result-object v12

    .line 2228
    invoke-virtual {v12}, Lpn4;->b()V

    .line 2229
    .line 2230
    .line 2231
    iget-object v13, v12, Lpn4;->o:Lrn4;

    .line 2232
    .line 2233
    check-cast v13, Lu45;

    .line 2234
    .line 2235
    invoke-virtual {v13}, Lu45;->W0()V

    .line 2236
    .line 2237
    .line 2238
    invoke-virtual {v12}, Lpn4;->d()Lrn4;

    .line 2239
    .line 2240
    .line 2241
    move-result-object v12

    .line 2242
    check-cast v12, Lu45;

    .line 2243
    .line 2244
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2245
    .line 2246
    .line 2247
    goto :goto_36

    .line 2248
    :cond_45
    invoke-virtual {v10}, Lpn4;->b()V

    .line 2249
    .line 2250
    .line 2251
    iget-object v8, v10, Lpn4;->o:Lrn4;

    .line 2252
    .line 2253
    check-cast v8, Lp45;

    .line 2254
    .line 2255
    invoke-virtual {v8}, Lp45;->F()V

    .line 2256
    .line 2257
    .line 2258
    invoke-virtual {v10}, Lpn4;->b()V

    .line 2259
    .line 2260
    .line 2261
    iget-object v8, v10, Lpn4;->o:Lrn4;

    .line 2262
    .line 2263
    check-cast v8, Lp45;

    .line 2264
    .line 2265
    invoke-virtual {v8, v11}, Lp45;->E(Ljava/util/ArrayList;)V

    .line 2266
    .line 2267
    .line 2268
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 2269
    .line 2270
    .line 2271
    move-result-object v8

    .line 2272
    invoke-virtual {v8}, La25;->C()Lx15;

    .line 2273
    .line 2274
    .line 2275
    move-result-object v8

    .line 2276
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2277
    .line 2278
    .line 2279
    move-result v11

    .line 2280
    if-eqz v11, :cond_46

    .line 2281
    .line 2282
    const-string v11, "null"

    .line 2283
    .line 2284
    goto :goto_37

    .line 2285
    :cond_46
    invoke-virtual {v10}, Li45;->g()Ljava/lang/String;

    .line 2286
    .line 2287
    .line 2288
    move-result-object v11

    .line 2289
    :goto_37
    const-string v12, "[sgtm] Processed MeasurementBatch for sGTM with sgtmJoinId: "

    .line 2290
    .line 2291
    invoke-virtual {v8, v11, v12}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2292
    .line 2293
    .line 2294
    invoke-virtual {v10}, Lpn4;->d()Lrn4;

    .line 2295
    .line 2296
    .line 2297
    move-result-object v8

    .line 2298
    check-cast v8, Lp45;

    .line 2299
    .line 2300
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2301
    .line 2302
    .line 2303
    move-result v10

    .line 2304
    if-nez v10, :cond_4b

    .line 2305
    .line 2306
    invoke-virtual {v0}, Lpn4;->d()Lrn4;

    .line 2307
    .line 2308
    .line 2309
    move-result-object v0

    .line 2310
    check-cast v0, Lp45;

    .line 2311
    .line 2312
    invoke-virtual {v1}, Lpb5;->d()Lj45;

    .line 2313
    .line 2314
    .line 2315
    move-result-object v10

    .line 2316
    invoke-virtual {v10}, Lj45;->v()V

    .line 2317
    .line 2318
    .line 2319
    invoke-virtual {v1}, Lpb5;->l0()V

    .line 2320
    .line 2321
    .line 2322
    invoke-static {}, Lp45;->A()Li45;

    .line 2323
    .line 2324
    .line 2325
    move-result-object v10

    .line 2326
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 2327
    .line 2328
    .line 2329
    move-result-object v11

    .line 2330
    invoke-virtual {v11}, La25;->C()Lx15;

    .line 2331
    .line 2332
    .line 2333
    move-result-object v11

    .line 2334
    const-string v12, "[sgtm] Processing Google Signal, sgtmJoinId:"

    .line 2335
    .line 2336
    invoke-virtual {v11, v4, v12}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2337
    .line 2338
    .line 2339
    invoke-virtual {v10}, Lpn4;->b()V

    .line 2340
    .line 2341
    .line 2342
    iget-object v11, v10, Lpn4;->o:Lrn4;

    .line 2343
    .line 2344
    check-cast v11, Lp45;

    .line 2345
    .line 2346
    invoke-virtual {v11, v4}, Lp45;->G(Ljava/lang/String;)V

    .line 2347
    .line 2348
    .line 2349
    invoke-virtual {v0}, Lp45;->t()Ljava/util/List;

    .line 2350
    .line 2351
    .line 2352
    move-result-object v0

    .line 2353
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2354
    .line 2355
    .line 2356
    move-result-object v0

    .line 2357
    :goto_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 2358
    .line 2359
    .line 2360
    move-result v4

    .line 2361
    if-eqz v4, :cond_47

    .line 2362
    .line 2363
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2364
    .line 2365
    .line 2366
    move-result-object v4

    .line 2367
    check-cast v4, Lu45;

    .line 2368
    .line 2369
    invoke-static {}, Lu45;->Y()Lq45;

    .line 2370
    .line 2371
    .line 2372
    move-result-object v11

    .line 2373
    invoke-virtual {v4}, Lu45;->S()Ljava/lang/String;

    .line 2374
    .line 2375
    .line 2376
    move-result-object v12

    .line 2377
    invoke-virtual {v11}, Lpn4;->b()V

    .line 2378
    .line 2379
    .line 2380
    iget-object v13, v11, Lpn4;->o:Lrn4;

    .line 2381
    .line 2382
    check-cast v13, Lu45;

    .line 2383
    .line 2384
    invoke-virtual {v13, v12}, Lu45;->V0(Ljava/lang/String;)V

    .line 2385
    .line 2386
    .line 2387
    invoke-virtual {v4}, Lu45;->O0()I

    .line 2388
    .line 2389
    .line 2390
    move-result v4

    .line 2391
    invoke-virtual {v11}, Lpn4;->b()V

    .line 2392
    .line 2393
    .line 2394
    iget-object v12, v11, Lpn4;->o:Lrn4;

    .line 2395
    .line 2396
    check-cast v12, Lu45;

    .line 2397
    .line 2398
    invoke-virtual {v12, v4}, Lu45;->n1(I)V

    .line 2399
    .line 2400
    .line 2401
    invoke-virtual {v10}, Lpn4;->b()V

    .line 2402
    .line 2403
    .line 2404
    iget-object v4, v10, Lpn4;->o:Lrn4;

    .line 2405
    .line 2406
    check-cast v4, Lp45;

    .line 2407
    .line 2408
    invoke-virtual {v11}, Lpn4;->d()Lrn4;

    .line 2409
    .line 2410
    .line 2411
    move-result-object v11

    .line 2412
    check-cast v11, Lu45;

    .line 2413
    .line 2414
    invoke-virtual {v4, v11}, Lp45;->D(Lu45;)V

    .line 2415
    .line 2416
    .line 2417
    goto :goto_38

    .line 2418
    :cond_47
    invoke-virtual {v10}, Lpn4;->d()Lrn4;

    .line 2419
    .line 2420
    .line 2421
    move-result-object v0

    .line 2422
    check-cast v0, Lp45;

    .line 2423
    .line 2424
    iget-object v4, v14, Lta5;->b:Lpb5;

    .line 2425
    .line 2426
    invoke-virtual {v4}, Lpb5;->f0()Lw35;

    .line 2427
    .line 2428
    .line 2429
    move-result-object v4

    .line 2430
    invoke-virtual {v4, v6}, Lw35;->I(Ljava/lang/String;)Ljava/lang/String;

    .line 2431
    .line 2432
    .line 2433
    move-result-object v4

    .line 2434
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2435
    .line 2436
    .line 2437
    move-result v10

    .line 2438
    sget-object v11, Lv75;->p:Lv75;

    .line 2439
    .line 2440
    sget-object v12, Lv75;->s:Lv75;

    .line 2441
    .line 2442
    if-nez v10, :cond_49

    .line 2443
    .line 2444
    sget-object v10, Le05;->s:Ld05;

    .line 2445
    .line 2446
    const/4 v13, 0x0

    .line 2447
    invoke-virtual {v10, v13}, Ld05;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2448
    .line 2449
    .line 2450
    move-result-object v10

    .line 2451
    check-cast v10, Ljava/lang/String;

    .line 2452
    .line 2453
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 2454
    .line 2455
    .line 2456
    move-result-object v10

    .line 2457
    invoke-virtual {v10}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 2458
    .line 2459
    .line 2460
    move-result-object v13

    .line 2461
    invoke-virtual {v10}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 2462
    .line 2463
    .line 2464
    move-result-object v10

    .line 2465
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2466
    .line 2467
    .line 2468
    move-result-object v14

    .line 2469
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 2470
    .line 2471
    .line 2472
    move-result v14

    .line 2473
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2474
    .line 2475
    .line 2476
    move-result-object v17

    .line 2477
    const/16 v18, 0x1

    .line 2478
    .line 2479
    add-int/lit8 v14, v14, 0x1

    .line 2480
    .line 2481
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    .line 2482
    .line 2483
    .line 2484
    move-result v17

    .line 2485
    new-instance v6, Ljava/lang/StringBuilder;

    .line 2486
    .line 2487
    add-int v14, v14, v17

    .line 2488
    .line 2489
    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2490
    .line 2491
    .line 2492
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2493
    .line 2494
    .line 2495
    const-string v4, "."

    .line 2496
    .line 2497
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2498
    .line 2499
    .line 2500
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2501
    .line 2502
    .line 2503
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2504
    .line 2505
    .line 2506
    move-result-object v4

    .line 2507
    invoke-virtual {v13, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2508
    .line 2509
    .line 2510
    new-instance v4, Lcb5;

    .line 2511
    .line 2512
    invoke-virtual {v13}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 2513
    .line 2514
    .line 2515
    move-result-object v6

    .line 2516
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 2517
    .line 2518
    .line 2519
    move-result-object v6

    .line 2520
    if-eqz v9, :cond_48

    .line 2521
    .line 2522
    move-object v11, v12

    .line 2523
    :cond_48
    sget-object v10, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 2524
    .line 2525
    const/4 v13, 0x0

    .line 2526
    invoke-direct {v4, v6, v10, v11, v13}, Lcb5;-><init>(Ljava/lang/String;Ljava/util/Map;Lv75;Lf55;)V

    .line 2527
    .line 2528
    .line 2529
    goto :goto_39

    .line 2530
    :cond_49
    const/4 v13, 0x0

    .line 2531
    new-instance v4, Lcb5;

    .line 2532
    .line 2533
    sget-object v6, Le05;->s:Ld05;

    .line 2534
    .line 2535
    invoke-virtual {v6, v13}, Ld05;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2536
    .line 2537
    .line 2538
    move-result-object v6

    .line 2539
    check-cast v6, Ljava/lang/String;

    .line 2540
    .line 2541
    if-eqz v9, :cond_4a

    .line 2542
    .line 2543
    move-object v11, v12

    .line 2544
    :cond_4a
    sget-object v10, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 2545
    .line 2546
    invoke-direct {v4, v6, v10, v11, v13}, Lcb5;-><init>(Ljava/lang/String;Ljava/util/Map;Lv75;Lf55;)V

    .line 2547
    .line 2548
    .line 2549
    :goto_39
    invoke-static {v0, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 2550
    .line 2551
    .line 2552
    move-result-object v0

    .line 2553
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2554
    .line 2555
    .line 2556
    goto :goto_3a

    .line 2557
    :cond_4b
    const/4 v13, 0x0

    .line 2558
    :goto_3a
    if-eqz v9, :cond_4e

    .line 2559
    .line 2560
    invoke-virtual {v8}, Lrn4;->k()Lpn4;

    .line 2561
    .line 2562
    .line 2563
    move-result-object v0

    .line 2564
    check-cast v0, Li45;

    .line 2565
    .line 2566
    const/4 v4, 0x0

    .line 2567
    :goto_3b
    invoke-virtual {v8}, Lp45;->u()I

    .line 2568
    .line 2569
    .line 2570
    move-result v6

    .line 2571
    if-ge v4, v6, :cond_4c

    .line 2572
    .line 2573
    invoke-virtual {v8, v4}, Lp45;->v(I)Lu45;

    .line 2574
    .line 2575
    .line 2576
    move-result-object v6

    .line 2577
    invoke-virtual {v6}, Lrn4;->k()Lpn4;

    .line 2578
    .line 2579
    .line 2580
    move-result-object v6

    .line 2581
    check-cast v6, Lq45;

    .line 2582
    .line 2583
    invoke-virtual {v6}, Lq45;->Z()V

    .line 2584
    .line 2585
    .line 2586
    invoke-virtual {v6, v2, v3}, Lq45;->B(J)V

    .line 2587
    .line 2588
    .line 2589
    invoke-virtual {v0}, Lpn4;->b()V

    .line 2590
    .line 2591
    .line 2592
    iget-object v9, v0, Lpn4;->o:Lrn4;

    .line 2593
    .line 2594
    check-cast v9, Lp45;

    .line 2595
    .line 2596
    invoke-virtual {v6}, Lpn4;->d()Lrn4;

    .line 2597
    .line 2598
    .line 2599
    move-result-object v6

    .line 2600
    check-cast v6, Lu45;

    .line 2601
    .line 2602
    invoke-virtual {v9, v4, v6}, Lp45;->C(ILu45;)V

    .line 2603
    .line 2604
    .line 2605
    add-int/lit8 v4, v4, 0x1

    .line 2606
    .line 2607
    goto :goto_3b

    .line 2608
    :cond_4c
    invoke-virtual {v0}, Lpn4;->d()Lrn4;

    .line 2609
    .line 2610
    .line 2611
    move-result-object v0

    .line 2612
    check-cast v0, Lp45;

    .line 2613
    .line 2614
    invoke-static {v0, v15}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 2615
    .line 2616
    .line 2617
    move-result-object v0

    .line 2618
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2619
    .line 2620
    .line 2621
    invoke-virtual {v1, v7}, Lpb5;->p(Ljava/util/ArrayList;)V

    .line 2622
    .line 2623
    .line 2624
    move-object v7, v5

    .line 2625
    const/4 v5, 0x0

    .line 2626
    const/4 v8, 0x0

    .line 2627
    const/4 v2, 0x0

    .line 2628
    const/16 v3, 0xcc

    .line 2629
    .line 2630
    const/4 v4, 0x0

    .line 2631
    move-object/from16 v6, p3

    .line 2632
    .line 2633
    invoke-virtual/range {v1 .. v8}, Lpb5;->z(ZILjava/lang/Throwable;[BLjava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    .line 2634
    .line 2635
    .line 2636
    invoke-virtual {v15}, Lcb5;->a()Ljava/lang/String;

    .line 2637
    .line 2638
    .line 2639
    move-result-object v0

    .line 2640
    invoke-virtual {v1, v6, v0}, Lpb5;->s(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2641
    .line 2642
    .line 2643
    move-result v0

    .line 2644
    if-eqz v0, :cond_50

    .line 2645
    .line 2646
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 2647
    .line 2648
    .line 2649
    move-result-object v0

    .line 2650
    invoke-virtual {v0}, La25;->C()Lx15;

    .line 2651
    .line 2652
    .line 2653
    move-result-object v0

    .line 2654
    const-string v1, "[sgtm] Sending sgtm batches available notification to app"

    .line 2655
    .line 2656
    invoke-virtual {v0, v6, v1}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2657
    .line 2658
    .line 2659
    new-instance v0, Landroid/content/Intent;

    .line 2660
    .line 2661
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2662
    .line 2663
    .line 2664
    const-string v1, "com.google.android.gms.measurement.BATCHES_AVAILABLE"

    .line 2665
    .line 2666
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2667
    .line 2668
    .line 2669
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2670
    .line 2671
    .line 2672
    invoke-virtual/range {v23 .. v23}, Lr45;->e()Landroid/content/Context;

    .line 2673
    .line 2674
    .line 2675
    move-result-object v1

    .line 2676
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2677
    .line 2678
    move/from16 v3, v16

    .line 2679
    .line 2680
    if-ge v2, v3, :cond_4d

    .line 2681
    .line 2682
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2683
    .line 2684
    .line 2685
    goto :goto_3e

    .line 2686
    :cond_4d
    invoke-static {}, Ld80;->g()Landroid/app/BroadcastOptions;

    .line 2687
    .line 2688
    .line 2689
    move-result-object v2

    .line 2690
    invoke-static {v2}, Ld80;->h(Landroid/app/BroadcastOptions;)Landroid/app/BroadcastOptions;

    .line 2691
    .line 2692
    .line 2693
    move-result-object v2

    .line 2694
    invoke-static {v2}, Ld80;->k(Landroid/app/BroadcastOptions;)Landroid/os/Bundle;

    .line 2695
    .line 2696
    .line 2697
    move-result-object v2

    .line 2698
    invoke-static {v1, v0, v2}, Ld80;->p(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 2699
    .line 2700
    .line 2701
    goto :goto_3e

    .line 2702
    :cond_4e
    move-object/from16 v6, p3

    .line 2703
    .line 2704
    move-object v4, v8

    .line 2705
    goto/16 :goto_33

    .line 2706
    .line 2707
    :goto_3c
    iget-object v5, v1, Lpb5;->b:Li25;

    .line 2708
    .line 2709
    invoke-static {v5}, Lpb5;->T(Lab5;)V

    .line 2710
    .line 2711
    .line 2712
    invoke-virtual {v5}, Li25;->z()Z

    .line 2713
    .line 2714
    .line 2715
    move-result v8

    .line 2716
    if-eqz v8, :cond_50

    .line 2717
    .line 2718
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 2719
    .line 2720
    .line 2721
    move-result-object v8

    .line 2722
    invoke-virtual {v8}, La25;->F()Ljava/lang/String;

    .line 2723
    .line 2724
    .line 2725
    move-result-object v8

    .line 2726
    const/4 v9, 0x2

    .line 2727
    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 2728
    .line 2729
    .line 2730
    move-result v8

    .line 2731
    if-eqz v8, :cond_4f

    .line 2732
    .line 2733
    invoke-virtual {v1}, Lpb5;->j0()Lub5;

    .line 2734
    .line 2735
    .line 2736
    move-result-object v8

    .line 2737
    invoke-virtual {v8, v4}, Lub5;->W(Lp45;)Ljava/lang/String;

    .line 2738
    .line 2739
    .line 2740
    move-result-object v14

    .line 2741
    goto :goto_3d

    .line 2742
    :cond_4f
    move-object v14, v13

    .line 2743
    :goto_3d
    invoke-virtual {v1}, Lpb5;->j0()Lub5;

    .line 2744
    .line 2745
    .line 2746
    invoke-virtual {v4}, Lsm4;->a()[B

    .line 2747
    .line 2748
    .line 2749
    move-result-object v8

    .line 2750
    invoke-virtual {v1, v7}, Lpb5;->p(Ljava/util/ArrayList;)V

    .line 2751
    .line 2752
    .line 2753
    iget-object v7, v1, Lpb5;->i:Lr95;

    .line 2754
    .line 2755
    iget-object v7, v7, Lr95;->i:Ly25;

    .line 2756
    .line 2757
    invoke-virtual {v7, v2, v3}, Ly25;->b(J)V

    .line 2758
    .line 2759
    .line 2760
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 2761
    .line 2762
    .line 2763
    move-result-object v2

    .line 2764
    invoke-virtual {v2}, La25;->C()Lx15;

    .line 2765
    .line 2766
    .line 2767
    move-result-object v2

    .line 2768
    array-length v3, v8

    .line 2769
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2770
    .line 2771
    .line 2772
    move-result-object v3

    .line 2773
    const-string v7, "Uploading data. app, uncompressed size, data"

    .line 2774
    .line 2775
    invoke-virtual {v2, v7, v6, v3, v14}, Lx15;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2776
    .line 2777
    .line 2778
    const/4 v9, 0x1

    .line 2779
    iput-boolean v9, v1, Lpb5;->u:Z

    .line 2780
    .line 2781
    invoke-static {v5}, Lpb5;->T(Lab5;)V

    .line 2782
    .line 2783
    .line 2784
    new-instance v2, Lui3;

    .line 2785
    .line 2786
    const/16 v3, 0xf

    .line 2787
    .line 2788
    invoke-direct {v2, v1, v6, v0, v3}, Lui3;-><init>(Lpb5;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 2789
    .line 2790
    .line 2791
    invoke-virtual {v5, v6, v15, v4, v2}, Li25;->C(Ljava/lang/String;Lcb5;Lp45;Ld25;)V

    .line 2792
    .line 2793
    .line 2794
    :cond_50
    :goto_3e
    return-void

    .line 2795
    :goto_3f
    if-eqz v14, :cond_51

    .line 2796
    .line 2797
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 2798
    .line 2799
    .line 2800
    :cond_51
    throw v0
.end method

.method public final s(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lpb5;->c:Lat4;

    .line 2
    .line 3
    invoke-static {v0}, Lpb5;->T(Lab5;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lat4;->z0(Ljava/lang/String;)Lm25;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lpb5;->E:Ljava/util/HashMap;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lpb5;->k0()Lac5;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {v0}, Lm25;->D()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p0, p1, v0}, Lac5;->Z(Ljava/lang/String;Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    return v2

    .line 33
    :cond_0
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Lob5;

    .line 38
    .line 39
    if-nez p0, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object p1, p0, Lob5;->a:Lpb5;

    .line 43
    .line 44
    invoke-virtual {p1}, Lpb5;->f()Lcom/google/android/gms/common/util/Clock;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 49
    .line 50
    .line 51
    move-result-wide p1

    .line 52
    iget-wide v0, p0, Lob5;->c:J

    .line 53
    .line 54
    cmp-long p0, p1, v0

    .line 55
    .line 56
    if-ltz p0, :cond_2

    .line 57
    .line 58
    :goto_0
    return v2

    .line 59
    :cond_2
    const/4 p0, 0x0

    .line 60
    return p0
.end method

.method public final t(Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lpb5;->d()Lj45;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lj45;->v()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lpb5;->l0()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lpb5;->v:Z

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    :try_start_0
    iget-object v2, p0, Lpb5;->l:Lr45;

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Lr45;->o()Lo95;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget-object v2, v2, Lo95;->e:Ljava/lang/Boolean;

    .line 25
    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Lpb5;->c()La25;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object p1, p1, La25;->i:Lx15;

    .line 33
    .line 34
    const-string v0, "Upload data called on the client side before use of service was decided"

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lx15;->a(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto/16 :goto_1

    .line 40
    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto/16 :goto_2

    .line 43
    .line 44
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    invoke-virtual {p0}, Lpb5;->c()La25;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iget-object p1, p1, La25;->f:Lx15;

    .line 55
    .line 56
    const-string v0, "Upload called in the client side when service should be used"

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Lx15;->a(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    goto/16 :goto_1

    .line 62
    .line 63
    :cond_1
    iget-wide v2, p0, Lpb5;->o:J

    .line 64
    .line 65
    const-wide/16 v4, 0x0

    .line 66
    .line 67
    cmp-long v2, v2, v4

    .line 68
    .line 69
    if-lez v2, :cond_2

    .line 70
    .line 71
    invoke-virtual {p0}, Lpb5;->N()V

    .line 72
    .line 73
    .line 74
    goto/16 :goto_1

    .line 75
    .line 76
    :cond_2
    iget-object v2, p0, Lpb5;->b:Li25;

    .line 77
    .line 78
    invoke-static {v2}, Lpb5;->T(Lab5;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Li25;->z()Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-nez v2, :cond_3

    .line 86
    .line 87
    invoke-virtual {p0}, Lpb5;->c()La25;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    iget-object p1, p1, La25;->n:Lx15;

    .line 92
    .line 93
    const-string v0, "Network not connected, ignoring upload request"

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Lx15;->a(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Lpb5;->N()V

    .line 99
    .line 100
    .line 101
    goto/16 :goto_1

    .line 102
    .line 103
    :cond_3
    iget-object v2, p0, Lpb5;->c:Lat4;

    .line 104
    .line 105
    invoke-static {v2}, Lpb5;->T(Lab5;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2, p1}, Lat4;->B(Ljava/lang/String;)Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-nez v2, :cond_4

    .line 113
    .line 114
    invoke-virtual {p0}, Lpb5;->c()La25;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    iget-object v0, v0, La25;->n:Lx15;

    .line 119
    .line 120
    const-string v2, "[sgtm] Upload queue has no batches for appId"

    .line 121
    .line 122
    invoke-virtual {v0, p1, v2}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    goto/16 :goto_1

    .line 126
    .line 127
    :cond_4
    iget-object v2, p0, Lpb5;->c:Lat4;

    .line 128
    .line 129
    invoke-static {v2}, Lpb5;->T(Lab5;)V

    .line 130
    .line 131
    .line 132
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2}, Lib0;->v()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2}, Lab5;->w()V

    .line 139
    .line 140
    .line 141
    sget-object v3, Lv75;->p:Lv75;

    .line 142
    .line 143
    filled-new-array {v3}, [Lv75;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-static {v3}, Lwa5;->Y([Lv75;)Lwa5;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    invoke-virtual {v2, p1, v3, v0}, Lat4;->A(Ljava/lang/String;Lwa5;I)Ljava/util/List;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    const/4 v4, 0x0

    .line 160
    if-eqz v3, :cond_5

    .line 161
    .line 162
    move-object v2, v4

    .line 163
    goto :goto_0

    .line 164
    :cond_5
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    check-cast v2, Ltb5;

    .line 169
    .line 170
    :goto_0
    if-eqz v2, :cond_7

    .line 171
    .line 172
    iget-object v3, v2, Ltb5;->b:Lp45;

    .line 173
    .line 174
    invoke-virtual {p0}, Lpb5;->c()La25;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    iget-object v5, v5, La25;->n:Lx15;

    .line 179
    .line 180
    const-string v6, "[sgtm] Uploading data from upload queue. appId, type, url"

    .line 181
    .line 182
    iget-object v7, v2, Ltb5;->e:Lv75;

    .line 183
    .line 184
    iget-object v8, v2, Ltb5;->c:Ljava/lang/String;

    .line 185
    .line 186
    invoke-virtual {v5, v6, p1, v7, v8}, Lx15;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v3}, Lsm4;->a()[B

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    invoke-virtual {p0}, Lpb5;->c()La25;

    .line 194
    .line 195
    .line 196
    move-result-object v6

    .line 197
    invoke-virtual {v6}, La25;->F()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v6

    .line 201
    const/4 v7, 0x2

    .line 202
    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 203
    .line 204
    .line 205
    move-result v6

    .line 206
    if-eqz v6, :cond_6

    .line 207
    .line 208
    iget-object v6, p0, Lpb5;->g:Lub5;

    .line 209
    .line 210
    invoke-static {v6}, Lpb5;->T(Lab5;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v6, v3}, Lub5;->W(Lp45;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v6

    .line 217
    invoke-virtual {p0}, Lpb5;->c()La25;

    .line 218
    .line 219
    .line 220
    move-result-object v7

    .line 221
    iget-object v7, v7, La25;->n:Lx15;

    .line 222
    .line 223
    const-string v8, "[sgtm] Uploading data from upload queue. appId, uncompressed size, data"

    .line 224
    .line 225
    array-length v5, v5

    .line 226
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    invoke-virtual {v7, v8, p1, v5, v6}, Lx15;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    :cond_6
    new-instance v5, Lcb5;

    .line 234
    .line 235
    iget-object v6, v2, Ltb5;->c:Ljava/lang/String;

    .line 236
    .line 237
    iget-object v7, v2, Ltb5;->d:Ljava/util/HashMap;

    .line 238
    .line 239
    iget-object v8, v2, Ltb5;->e:Lv75;

    .line 240
    .line 241
    invoke-direct {v5, v6, v7, v8, v4}, Lcb5;-><init>(Ljava/lang/String;Ljava/util/Map;Lv75;Lf55;)V

    .line 242
    .line 243
    .line 244
    iput-boolean v0, p0, Lpb5;->u:Z

    .line 245
    .line 246
    iget-object v0, p0, Lpb5;->b:Li25;

    .line 247
    .line 248
    invoke-static {v0}, Lpb5;->T(Lab5;)V

    .line 249
    .line 250
    .line 251
    new-instance v4, Lui3;

    .line 252
    .line 253
    const/16 v6, 0x10

    .line 254
    .line 255
    invoke-direct {v4, p0, p1, v2, v6}, Lui3;-><init>(Lpb5;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0, p1, v5, v3, v4}, Li25;->C(Ljava/lang/String;Lcb5;Lp45;Ld25;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    .line 260
    .line 261
    :cond_7
    :goto_1
    iput-boolean v1, p0, Lpb5;->v:Z

    .line 262
    .line 263
    invoke-virtual {p0}, Lpb5;->O()V

    .line 264
    .line 265
    .line 266
    return-void

    .line 267
    :goto_2
    iput-boolean v1, p0, Lpb5;->v:Z

    .line 268
    .line 269
    invoke-virtual {p0}, Lpb5;->O()V

    .line 270
    .line 271
    .line 272
    throw p1
.end method

.method public final u(Ljava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lpb5;->c:Lat4;

    .line 2
    .line 3
    invoke-static {v0}, Lpb5;->T(Lab5;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lat4;->z0(Ljava/lang/String;)Lm25;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-object v0, p1, Lm25;->a:Lr45;

    .line 13
    .line 14
    iget-object v1, v0, Lr45;->g:Lj45;

    .line 15
    .line 16
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lj45;->v()V

    .line 20
    .line 21
    .line 22
    iget-boolean v1, p1, Lm25;->R:Z

    .line 23
    .line 24
    iget-boolean v2, p1, Lm25;->y:Z

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    const/4 v4, 0x0

    .line 28
    if-eq v2, p2, :cond_0

    .line 29
    .line 30
    move v2, v3

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v2, v4

    .line 33
    :goto_0
    or-int/2addr v1, v2

    .line 34
    iput-boolean v1, p1, Lm25;->R:Z

    .line 35
    .line 36
    iput-boolean p2, p1, Lm25;->y:Z

    .line 37
    .line 38
    iget-object p2, v0, Lr45;->g:Lj45;

    .line 39
    .line 40
    invoke-static {p2}, Lr45;->l(Lq55;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Lj45;->v()V

    .line 44
    .line 45
    .line 46
    iget-boolean p2, p1, Lm25;->R:Z

    .line 47
    .line 48
    iget-object v1, p1, Lm25;->z:Ljava/lang/Long;

    .line 49
    .line 50
    invoke-static {v1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    xor-int/2addr v1, v3

    .line 55
    or-int/2addr p2, v1

    .line 56
    iput-boolean p2, p1, Lm25;->R:Z

    .line 57
    .line 58
    iput-object p3, p1, Lm25;->z:Ljava/lang/Long;

    .line 59
    .line 60
    iget-object p2, v0, Lr45;->g:Lj45;

    .line 61
    .line 62
    invoke-static {p2}, Lr45;->l(Lq55;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2}, Lj45;->v()V

    .line 66
    .line 67
    .line 68
    iget-boolean p2, p1, Lm25;->R:Z

    .line 69
    .line 70
    iget-object p3, p1, Lm25;->A:Ljava/lang/Long;

    .line 71
    .line 72
    invoke-static {p3, p4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p3

    .line 76
    xor-int/2addr p3, v3

    .line 77
    or-int/2addr p2, p3

    .line 78
    iput-boolean p2, p1, Lm25;->R:Z

    .line 79
    .line 80
    iput-object p4, p1, Lm25;->A:Ljava/lang/Long;

    .line 81
    .line 82
    invoke-virtual {p1}, Lm25;->o()Z

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    if-eqz p2, :cond_1

    .line 87
    .line 88
    iget-object p0, p0, Lpb5;->c:Lat4;

    .line 89
    .line 90
    invoke-static {p0}, Lpb5;->T(Lab5;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, p1, v4}, Lat4;->A0(Lm25;Z)V

    .line 94
    .line 95
    .line 96
    :cond_1
    return-void
.end method

.method public final v(Ljava/lang/String;Lq45;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lpb5;->a:Lw35;

    .line 2
    .line 3
    invoke-static {v0}, Lpb5;->T(Lab5;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lib0;->v()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lw35;->B(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, v0, Lw35;->e:Ldi;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Lwm3;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Ljava/util/Set;

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-virtual {p2}, Lpn4;->b()V

    .line 23
    .line 24
    .line 25
    iget-object v3, p2, Lpn4;->o:Lrn4;

    .line 26
    .line 27
    check-cast v3, Lu45;

    .line 28
    .line 29
    check-cast v2, Ljava/util/Set;

    .line 30
    .line 31
    invoke-virtual {v3, v2}, Lu45;->e1(Ljava/util/Set;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-static {v0}, Lpb5;->T(Lab5;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lib0;->v()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Lw35;->B(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p1}, Lwm3;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    invoke-virtual {v1, p1}, Lwm3;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Ljava/util/Set;

    .line 54
    .line 55
    const-string v3, "device_model"

    .line 56
    .line 57
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-nez v2, :cond_1

    .line 62
    .line 63
    invoke-virtual {v1, p1}, Lwm3;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Ljava/util/Set;

    .line 68
    .line 69
    const-string v3, "device_info"

    .line 70
    .line 71
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-nez v2, :cond_1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {p2}, Lpn4;->b()V

    .line 79
    .line 80
    .line 81
    iget-object v2, p2, Lpn4;->o:Lrn4;

    .line 82
    .line 83
    check-cast v2, Lu45;

    .line 84
    .line 85
    invoke-virtual {v2}, Lu45;->u1()V

    .line 86
    .line 87
    .line 88
    :cond_2
    :goto_0
    invoke-static {v0}, Lpb5;->T(Lab5;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, p1}, Lw35;->O(Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    const/4 v3, -0x1

    .line 96
    if-eqz v2, :cond_3

    .line 97
    .line 98
    iget-object v2, p2, Lpn4;->o:Lrn4;

    .line 99
    .line 100
    check-cast v2, Lu45;

    .line 101
    .line 102
    invoke-virtual {v2}, Lu45;->n2()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    if-nez v4, :cond_3

    .line 111
    .line 112
    const-string v4, "."

    .line 113
    .line 114
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    if-eq v4, v3, :cond_3

    .line 119
    .line 120
    const/4 v5, 0x0

    .line 121
    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {p2}, Lpn4;->b()V

    .line 126
    .line 127
    .line 128
    iget-object v4, p2, Lpn4;->o:Lrn4;

    .line 129
    .line 130
    check-cast v4, Lu45;

    .line 131
    .line 132
    invoke-virtual {v4, v2}, Lu45;->s0(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    :cond_3
    invoke-static {v0}, Lpb5;->T(Lab5;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Lib0;->v()V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, p1}, Lw35;->B(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, p1}, Lwm3;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    if-eqz v2, :cond_4

    .line 149
    .line 150
    invoke-virtual {v1, p1}, Lwm3;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    check-cast v2, Ljava/util/Set;

    .line 155
    .line 156
    const-string v4, "user_id"

    .line 157
    .line 158
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    if-eqz v2, :cond_4

    .line 163
    .line 164
    const-string v2, "_id"

    .line 165
    .line 166
    invoke-static {v2, p2}, Lub5;->h0(Ljava/lang/String;Lq45;)I

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    if-eq v2, v3, :cond_4

    .line 171
    .line 172
    invoke-virtual {p2}, Lpn4;->b()V

    .line 173
    .line 174
    .line 175
    iget-object v3, p2, Lpn4;->o:Lrn4;

    .line 176
    .line 177
    check-cast v3, Lu45;

    .line 178
    .line 179
    invoke-virtual {v3, v2}, Lu45;->i0(I)V

    .line 180
    .line 181
    .line 182
    :cond_4
    invoke-static {v0}, Lpb5;->T(Lab5;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0}, Lib0;->v()V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, p1}, Lw35;->B(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1, p1}, Lwm3;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    if-eqz v2, :cond_5

    .line 196
    .line 197
    invoke-virtual {v1, p1}, Lwm3;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    check-cast v2, Ljava/util/Set;

    .line 202
    .line 203
    const-string v3, "google_signals"

    .line 204
    .line 205
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    if-eqz v2, :cond_5

    .line 210
    .line 211
    invoke-virtual {p2}, Lpn4;->b()V

    .line 212
    .line 213
    .line 214
    iget-object v2, p2, Lpn4;->o:Lrn4;

    .line 215
    .line 216
    check-cast v2, Lu45;

    .line 217
    .line 218
    invoke-virtual {v2}, Lu45;->W0()V

    .line 219
    .line 220
    .line 221
    :cond_5
    invoke-static {v0}, Lpb5;->T(Lab5;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0, p1}, Lw35;->P(Ljava/lang/String;)Z

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    if-eqz v2, :cond_8

    .line 229
    .line 230
    invoke-virtual {p2}, Lpn4;->b()V

    .line 231
    .line 232
    .line 233
    iget-object v2, p2, Lpn4;->o:Lrn4;

    .line 234
    .line 235
    check-cast v2, Lu45;

    .line 236
    .line 237
    invoke-virtual {v2}, Lu45;->H1()V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p0, p1}, Lpb5;->a(Ljava/lang/String;)Ly55;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    sget-object v3, Lx55;->p:Lx55;

    .line 245
    .line 246
    invoke-virtual {v2, v3}, Ly55;->i(Lx55;)Z

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    if-eqz v2, :cond_8

    .line 251
    .line 252
    iget-object v2, p0, Lpb5;->D:Ljava/util/HashMap;

    .line 253
    .line 254
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    check-cast v3, Lnb5;

    .line 259
    .line 260
    if-eqz v3, :cond_6

    .line 261
    .line 262
    iget-wide v4, v3, Lnb5;->b:J

    .line 263
    .line 264
    invoke-virtual {p0}, Lpb5;->e0()Lds4;

    .line 265
    .line 266
    .line 267
    move-result-object v6

    .line 268
    sget-object v7, Le05;->j0:Ld05;

    .line 269
    .line 270
    invoke-virtual {v6, p1, v7}, Lds4;->D(Ljava/lang/String;Ld05;)J

    .line 271
    .line 272
    .line 273
    move-result-wide v6

    .line 274
    add-long/2addr v6, v4

    .line 275
    invoke-virtual {p0}, Lpb5;->f()Lcom/google/android/gms/common/util/Clock;

    .line 276
    .line 277
    .line 278
    move-result-object v4

    .line 279
    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 280
    .line 281
    .line 282
    move-result-wide v4

    .line 283
    cmp-long v4, v6, v4

    .line 284
    .line 285
    if-gez v4, :cond_7

    .line 286
    .line 287
    :cond_6
    new-instance v3, Lnb5;

    .line 288
    .line 289
    invoke-virtual {p0}, Lpb5;->k0()Lac5;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    invoke-virtual {v4}, Lac5;->r0()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v4

    .line 297
    invoke-direct {v3, p0, v4}, Lnb5;-><init>(Lpb5;Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    :cond_7
    iget-object p0, v3, Lnb5;->a:Ljava/lang/String;

    .line 304
    .line 305
    invoke-virtual {p2}, Lpn4;->b()V

    .line 306
    .line 307
    .line 308
    iget-object v2, p2, Lpn4;->o:Lrn4;

    .line 309
    .line 310
    check-cast v2, Lu45;

    .line 311
    .line 312
    invoke-virtual {v2, p0}, Lu45;->f1(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    :cond_8
    invoke-static {v0}, Lpb5;->T(Lab5;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v0}, Lib0;->v()V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v0, p1}, Lw35;->B(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v1, p1}, Lwm3;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object p0

    .line 328
    if-eqz p0, :cond_9

    .line 329
    .line 330
    invoke-virtual {v1, p1}, Lwm3;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object p0

    .line 334
    check-cast p0, Ljava/util/Set;

    .line 335
    .line 336
    const-string p1, "enhanced_user_id"

    .line 337
    .line 338
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    move-result p0

    .line 342
    if-eqz p0, :cond_9

    .line 343
    .line 344
    invoke-virtual {p2}, Lpn4;->b()V

    .line 345
    .line 346
    .line 347
    iget-object p0, p2, Lpn4;->o:Lrn4;

    .line 348
    .line 349
    check-cast p0, Lu45;

    .line 350
    .line 351
    invoke-virtual {p0}, Lu45;->d1()V

    .line 352
    .line 353
    .line 354
    :cond_9
    return-void
.end method

.method public final w(Lq45;Lq41;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    :goto_0
    invoke-virtual {v1}, Lq45;->U()I

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    if-ge v3, v4, :cond_7

    .line 13
    .line 14
    iget-object v4, v1, Lpn4;->o:Lrn4;

    .line 15
    .line 16
    check-cast v4, Lu45;

    .line 17
    .line 18
    invoke-virtual {v4, v3}, Lu45;->Y1(I)Lu35;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v4}, Lrn4;->k()Lpn4;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Ls35;

    .line 27
    .line 28
    invoke-virtual {v4}, Ls35;->g()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-eqz v6, :cond_6

    .line 41
    .line 42
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    check-cast v6, Lc45;

    .line 47
    .line 48
    invoke-virtual {v6}, Lc45;->u()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    const-string v7, "_c"

    .line 53
    .line 54
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-eqz v6, :cond_0

    .line 59
    .line 60
    iget-object v5, v2, Lq41;->o:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v5, Lu45;

    .line 63
    .line 64
    invoke-virtual {v5}, Lu45;->K0()I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    invoke-virtual {v0}, Lpb5;->e0()Lds4;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    iget-object v7, v2, Lq41;->o:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v7, Lu45;

    .line 75
    .line 76
    invoke-virtual {v7}, Lu45;->t()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    sget-object v8, Le05;->k0:Ld05;

    .line 81
    .line 82
    invoke-virtual {v6, v7, v8}, Lds4;->E(Ljava/lang/String;Ld05;)I

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    if-lt v5, v6, :cond_5

    .line 87
    .line 88
    invoke-virtual {v0}, Lpb5;->e0()Lds4;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    iget-object v6, v2, Lq41;->o:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v6, Lu45;

    .line 95
    .line 96
    invoke-virtual {v6}, Lu45;->t()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    sget-object v7, Le05;->x0:Ld05;

    .line 101
    .line 102
    invoke-virtual {v5, v6, v7}, Lds4;->E(Ljava/lang/String;Ld05;)I

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    iget-object v6, v0, Lpb5;->q:Ljava/util/LinkedList;

    .line 107
    .line 108
    const-string v7, "Generated trigger URI. appId, uri"

    .line 109
    .line 110
    iget-object v8, v0, Lpb5;->g:Lub5;

    .line 111
    .line 112
    const-string v9, "_tr"

    .line 113
    .line 114
    const-string v11, "_tu"

    .line 115
    .line 116
    if-lez v5, :cond_3

    .line 117
    .line 118
    iget-object v14, v0, Lpb5;->c:Lat4;

    .line 119
    .line 120
    invoke-static {v14}, Lpb5;->T(Lab5;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Lpb5;->g()J

    .line 124
    .line 125
    .line 126
    move-result-wide v15

    .line 127
    iget-object v10, v2, Lq41;->o:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v10, Lu45;

    .line 130
    .line 131
    invoke-virtual {v10}, Lu45;->t()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v17

    .line 135
    const/16 v20, 0x0

    .line 136
    .line 137
    const/16 v21, 0x1

    .line 138
    .line 139
    const/16 v18, 0x0

    .line 140
    .line 141
    const/16 v19, 0x0

    .line 142
    .line 143
    invoke-virtual/range {v14 .. v21}, Lat4;->B0(JLjava/lang/String;ZZZZ)Lrs4;

    .line 144
    .line 145
    .line 146
    move-result-object v10

    .line 147
    iget-wide v14, v10, Lrs4;->g:J

    .line 148
    .line 149
    int-to-long v12, v5

    .line 150
    cmp-long v5, v14, v12

    .line 151
    .line 152
    if-lez v5, :cond_1

    .line 153
    .line 154
    invoke-static {}, Lc45;->F()La45;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    const-string v6, "_tnr"

    .line 159
    .line 160
    invoke-virtual {v5, v6}, La45;->g(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    const-wide/16 v6, 0x1

    .line 164
    .line 165
    invoke-virtual {v5, v6, v7}, La45;->i(J)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v5}, Lpn4;->d()Lrn4;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    check-cast v5, Lc45;

    .line 173
    .line 174
    invoke-virtual {v4, v5}, Ls35;->j(Lc45;)V

    .line 175
    .line 176
    .line 177
    goto/16 :goto_3

    .line 178
    .line 179
    :cond_1
    invoke-virtual {v0}, Lpb5;->e0()Lds4;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    iget-object v10, v2, Lq41;->o:Ljava/lang/Object;

    .line 184
    .line 185
    check-cast v10, Lu45;

    .line 186
    .line 187
    invoke-virtual {v10}, Lu45;->t()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v10

    .line 191
    sget-object v12, Le05;->Q0:Ld05;

    .line 192
    .line 193
    invoke-virtual {v5, v10, v12}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 194
    .line 195
    .line 196
    move-result v5

    .line 197
    if-eqz v5, :cond_2

    .line 198
    .line 199
    invoke-virtual {v0}, Lpb5;->k0()Lac5;

    .line 200
    .line 201
    .line 202
    move-result-object v5

    .line 203
    invoke-virtual {v5}, Lac5;->r0()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v10

    .line 207
    invoke-static {}, Lc45;->F()La45;

    .line 208
    .line 209
    .line 210
    move-result-object v5

    .line 211
    invoke-virtual {v5, v11}, La45;->g(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v5, v10}, La45;->h(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v5}, Lpn4;->d()Lrn4;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    check-cast v5, Lc45;

    .line 222
    .line 223
    invoke-virtual {v4, v5}, Ls35;->j(Lc45;)V

    .line 224
    .line 225
    .line 226
    goto :goto_1

    .line 227
    :cond_2
    const/4 v10, 0x0

    .line 228
    :goto_1
    invoke-static {}, Lc45;->F()La45;

    .line 229
    .line 230
    .line 231
    move-result-object v5

    .line 232
    invoke-virtual {v5, v9}, La45;->g(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    const-wide/16 v11, 0x1

    .line 236
    .line 237
    invoke-virtual {v5, v11, v12}, La45;->i(J)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v5}, Lpn4;->d()Lrn4;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    check-cast v5, Lc45;

    .line 245
    .line 246
    invoke-virtual {v4, v5}, Ls35;->j(Lc45;)V

    .line 247
    .line 248
    .line 249
    invoke-static {v8}, Lpb5;->T(Lab5;)V

    .line 250
    .line 251
    .line 252
    iget-object v5, v2, Lq41;->o:Ljava/lang/Object;

    .line 253
    .line 254
    check-cast v5, Lu45;

    .line 255
    .line 256
    invoke-virtual {v5}, Lu45;->t()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v5

    .line 260
    invoke-virtual {v8, v5, v1, v4, v10}, Lub5;->U(Ljava/lang/String;Lq45;Ls35;Ljava/lang/String;)Loa5;

    .line 261
    .line 262
    .line 263
    move-result-object v5

    .line 264
    if-eqz v5, :cond_5

    .line 265
    .line 266
    invoke-virtual {v0}, Lpb5;->c()La25;

    .line 267
    .line 268
    .line 269
    move-result-object v8

    .line 270
    iget-object v8, v8, La25;->n:Lx15;

    .line 271
    .line 272
    iget-object v9, v2, Lq41;->o:Ljava/lang/Object;

    .line 273
    .line 274
    check-cast v9, Lu45;

    .line 275
    .line 276
    invoke-virtual {v9}, Lu45;->t()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v9

    .line 280
    iget-object v10, v5, Loa5;->n:Ljava/lang/String;

    .line 281
    .line 282
    invoke-virtual {v8, v9, v10, v7}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    iget-object v7, v0, Lpb5;->c:Lat4;

    .line 286
    .line 287
    invoke-static {v7}, Lpb5;->T(Lab5;)V

    .line 288
    .line 289
    .line 290
    iget-object v8, v2, Lq41;->o:Ljava/lang/Object;

    .line 291
    .line 292
    check-cast v8, Lu45;

    .line 293
    .line 294
    invoke-virtual {v8}, Lu45;->t()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v8

    .line 298
    invoke-virtual {v7, v8, v5}, Lat4;->Q(Ljava/lang/String;Loa5;)V

    .line 299
    .line 300
    .line 301
    iget-object v5, v2, Lq41;->o:Ljava/lang/Object;

    .line 302
    .line 303
    check-cast v5, Lu45;

    .line 304
    .line 305
    invoke-virtual {v5}, Lu45;->t()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v5

    .line 309
    invoke-virtual {v6, v5}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    move-result v5

    .line 313
    if-nez v5, :cond_5

    .line 314
    .line 315
    iget-object v5, v2, Lq41;->o:Ljava/lang/Object;

    .line 316
    .line 317
    check-cast v5, Lu45;

    .line 318
    .line 319
    invoke-virtual {v5}, Lu45;->t()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v5

    .line 323
    invoke-virtual {v6, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    goto/16 :goto_3

    .line 327
    .line 328
    :cond_3
    invoke-virtual {v0}, Lpb5;->e0()Lds4;

    .line 329
    .line 330
    .line 331
    move-result-object v5

    .line 332
    iget-object v10, v2, Lq41;->o:Ljava/lang/Object;

    .line 333
    .line 334
    check-cast v10, Lu45;

    .line 335
    .line 336
    invoke-virtual {v10}, Lu45;->t()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v10

    .line 340
    sget-object v12, Le05;->Q0:Ld05;

    .line 341
    .line 342
    invoke-virtual {v5, v10, v12}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 343
    .line 344
    .line 345
    move-result v5

    .line 346
    if-eqz v5, :cond_4

    .line 347
    .line 348
    invoke-virtual {v0}, Lpb5;->k0()Lac5;

    .line 349
    .line 350
    .line 351
    move-result-object v5

    .line 352
    invoke-virtual {v5}, Lac5;->r0()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v10

    .line 356
    invoke-static {}, Lc45;->F()La45;

    .line 357
    .line 358
    .line 359
    move-result-object v5

    .line 360
    invoke-virtual {v5, v11}, La45;->g(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v5, v10}, La45;->h(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v5}, Lpn4;->d()Lrn4;

    .line 367
    .line 368
    .line 369
    move-result-object v5

    .line 370
    check-cast v5, Lc45;

    .line 371
    .line 372
    invoke-virtual {v4, v5}, Ls35;->j(Lc45;)V

    .line 373
    .line 374
    .line 375
    goto :goto_2

    .line 376
    :cond_4
    const/4 v10, 0x0

    .line 377
    :goto_2
    invoke-static {}, Lc45;->F()La45;

    .line 378
    .line 379
    .line 380
    move-result-object v5

    .line 381
    invoke-virtual {v5, v9}, La45;->g(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    const-wide/16 v11, 0x1

    .line 385
    .line 386
    invoke-virtual {v5, v11, v12}, La45;->i(J)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v5}, Lpn4;->d()Lrn4;

    .line 390
    .line 391
    .line 392
    move-result-object v5

    .line 393
    check-cast v5, Lc45;

    .line 394
    .line 395
    invoke-virtual {v4, v5}, Ls35;->j(Lc45;)V

    .line 396
    .line 397
    .line 398
    invoke-static {v8}, Lpb5;->T(Lab5;)V

    .line 399
    .line 400
    .line 401
    iget-object v5, v2, Lq41;->o:Ljava/lang/Object;

    .line 402
    .line 403
    check-cast v5, Lu45;

    .line 404
    .line 405
    invoke-virtual {v5}, Lu45;->t()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v5

    .line 409
    invoke-virtual {v8, v5, v1, v4, v10}, Lub5;->U(Ljava/lang/String;Lq45;Ls35;Ljava/lang/String;)Loa5;

    .line 410
    .line 411
    .line 412
    move-result-object v5

    .line 413
    if-eqz v5, :cond_5

    .line 414
    .line 415
    invoke-virtual {v0}, Lpb5;->c()La25;

    .line 416
    .line 417
    .line 418
    move-result-object v8

    .line 419
    iget-object v8, v8, La25;->n:Lx15;

    .line 420
    .line 421
    iget-object v9, v2, Lq41;->o:Ljava/lang/Object;

    .line 422
    .line 423
    check-cast v9, Lu45;

    .line 424
    .line 425
    invoke-virtual {v9}, Lu45;->t()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v9

    .line 429
    iget-object v10, v5, Loa5;->n:Ljava/lang/String;

    .line 430
    .line 431
    invoke-virtual {v8, v9, v10, v7}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    iget-object v7, v0, Lpb5;->c:Lat4;

    .line 435
    .line 436
    invoke-static {v7}, Lpb5;->T(Lab5;)V

    .line 437
    .line 438
    .line 439
    iget-object v8, v2, Lq41;->o:Ljava/lang/Object;

    .line 440
    .line 441
    check-cast v8, Lu45;

    .line 442
    .line 443
    invoke-virtual {v8}, Lu45;->t()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v8

    .line 447
    invoke-virtual {v7, v8, v5}, Lat4;->Q(Ljava/lang/String;Loa5;)V

    .line 448
    .line 449
    .line 450
    iget-object v5, v2, Lq41;->o:Ljava/lang/Object;

    .line 451
    .line 452
    check-cast v5, Lu45;

    .line 453
    .line 454
    invoke-virtual {v5}, Lu45;->t()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v5

    .line 458
    invoke-virtual {v6, v5}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    .line 459
    .line 460
    .line 461
    move-result v5

    .line 462
    if-nez v5, :cond_5

    .line 463
    .line 464
    iget-object v5, v2, Lq41;->o:Ljava/lang/Object;

    .line 465
    .line 466
    check-cast v5, Lu45;

    .line 467
    .line 468
    invoke-virtual {v5}, Lu45;->t()Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v5

    .line 472
    invoke-virtual {v6, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 473
    .line 474
    .line 475
    :cond_5
    :goto_3
    invoke-virtual {v4}, Lpn4;->d()Lrn4;

    .line 476
    .line 477
    .line 478
    move-result-object v4

    .line 479
    check-cast v4, Lu35;

    .line 480
    .line 481
    invoke-virtual {v1}, Lpn4;->b()V

    .line 482
    .line 483
    .line 484
    iget-object v5, v1, Lpn4;->o:Lrn4;

    .line 485
    .line 486
    check-cast v5, Lu45;

    .line 487
    .line 488
    invoke-virtual {v5, v3, v4}, Lu45;->b0(ILu35;)V

    .line 489
    .line 490
    .line 491
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 492
    .line 493
    goto/16 :goto_0

    .line 494
    .line 495
    :cond_7
    return-void
.end method

.method public final x(Ljava/lang/String;La45;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lpb5;->e0()Lds4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Le05;->a1:Ld05;

    .line 6
    .line 7
    invoke-virtual {v0, p4, v1}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v1, "_si"

    .line 12
    .line 13
    const-string v2, "_sc"

    .line 14
    .line 15
    const-string v3, "_sn"

    .line 16
    .line 17
    const-string v4, "_o"

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const-string v0, "deep_link_url"

    .line 22
    .line 23
    filled-new-array {v4, v3, v2, v1, v0}, [Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/google/android/gms/common/util/CollectionUtils;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    filled-new-array {v4, v3, v2, v1}, [Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Lcom/google/android/gms/common/util/CollectionUtils;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :goto_0
    iget-object v1, p2, Lpn4;->o:Lrn4;

    .line 41
    .line 42
    check-cast v1, Lc45;

    .line 43
    .line 44
    invoke-virtual {v1}, Lc45;->u()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {v1}, Lac5;->Y(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    const/4 v2, 0x1

    .line 53
    if-nez v1, :cond_2

    .line 54
    .line 55
    invoke-static {p1}, Lac5;->Y(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_1

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_1
    invoke-virtual {p0}, Lpb5;->e0()Lds4;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    sget-object v1, Le05;->g0:Ld05;

    .line 70
    .line 71
    invoke-virtual {p1, p4, v1}, Lds4;->E(Ljava/lang/String;Ld05;)I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    const/16 v1, 0x1f4

    .line 76
    .line 77
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    const/16 v1, 0x64

    .line 82
    .line 83
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    :goto_1
    int-to-long v3, p1

    .line 88
    goto :goto_3

    .line 89
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lpb5;->e0()Lds4;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p1, p4, v2}, Lds4;->A(Ljava/lang/String;Z)I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    goto :goto_1

    .line 98
    :goto_3
    iget-object p1, p2, Lpn4;->o:Lrn4;

    .line 99
    .line 100
    check-cast p1, Lc45;

    .line 101
    .line 102
    invoke-virtual {p1}, Lc45;->w()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    iget-object v1, p2, Lpn4;->o:Lrn4;

    .line 107
    .line 108
    check-cast v1, Lc45;

    .line 109
    .line 110
    invoke-virtual {v1}, Lc45;->w()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    const/4 v5, 0x0

    .line 119
    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->codePointCount(II)I

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    int-to-long v5, p1

    .line 124
    invoke-virtual {p0}, Lpb5;->k0()Lac5;

    .line 125
    .line 126
    .line 127
    iget-object p1, p2, Lpn4;->o:Lrn4;

    .line 128
    .line 129
    check-cast p1, Lc45;

    .line 130
    .line 131
    invoke-virtual {p1}, Lc45;->u()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {p0}, Lpb5;->e0()Lds4;

    .line 136
    .line 137
    .line 138
    const/16 v1, 0x28

    .line 139
    .line 140
    invoke-static {p1, v1, v2}, Lac5;->C(Ljava/lang/String;IZ)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    cmp-long v1, v5, v3

    .line 145
    .line 146
    if-lez v1, :cond_5

    .line 147
    .line 148
    iget-object v1, p2, Lpn4;->o:Lrn4;

    .line 149
    .line 150
    check-cast v1, Lc45;

    .line 151
    .line 152
    invoke-virtual {v1}, Lc45;->u()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-nez v0, :cond_5

    .line 161
    .line 162
    iget-object v0, p2, Lpn4;->o:Lrn4;

    .line 163
    .line 164
    check-cast v0, Lc45;

    .line 165
    .line 166
    invoke-virtual {v0}, Lc45;->u()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    const-string v1, "_ev"

    .line 171
    .line 172
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-eqz v0, :cond_3

    .line 177
    .line 178
    invoke-virtual {p0}, Lpb5;->k0()Lac5;

    .line 179
    .line 180
    .line 181
    iget-object p1, p2, Lpn4;->o:Lrn4;

    .line 182
    .line 183
    check-cast p1, Lc45;

    .line 184
    .line 185
    invoke-virtual {p1}, Lc45;->w()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-virtual {p0}, Lpb5;->e0()Lds4;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    invoke-virtual {p0, p4, v2}, Lds4;->A(Ljava/lang/String;Z)I

    .line 194
    .line 195
    .line 196
    move-result p0

    .line 197
    invoke-static {p1, p0, v2}, Lac5;->C(Ljava/lang/String;IZ)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    invoke-virtual {p3, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    return-void

    .line 205
    :cond_3
    invoke-virtual {p0}, Lpb5;->c()La25;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    iget-object p0, p0, La25;->k:Lx15;

    .line 210
    .line 211
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 212
    .line 213
    .line 214
    move-result-object p4

    .line 215
    const-string v0, "Param value is too long; discarded. Name, value length"

    .line 216
    .line 217
    invoke-virtual {p0, p1, p4, v0}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    const-string p0, "_err"

    .line 221
    .line 222
    invoke-virtual {p3, p0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 223
    .line 224
    .line 225
    move-result-wide v2

    .line 226
    const-wide/16 v7, 0x0

    .line 227
    .line 228
    cmp-long p4, v2, v7

    .line 229
    .line 230
    if-nez p4, :cond_4

    .line 231
    .line 232
    const-wide/16 v2, 0x4

    .line 233
    .line 234
    invoke-virtual {p3, p0, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p3, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object p0

    .line 241
    if-nez p0, :cond_4

    .line 242
    .line 243
    invoke-virtual {p3, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    const-string p0, "_el"

    .line 247
    .line 248
    invoke-virtual {p3, p0, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 249
    .line 250
    .line 251
    :cond_4
    iget-object p0, p2, Lpn4;->o:Lrn4;

    .line 252
    .line 253
    check-cast p0, Lc45;

    .line 254
    .line 255
    invoke-virtual {p0}, Lc45;->u()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object p0

    .line 259
    invoke-virtual {p3, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    :cond_5
    return-void
.end method

.method public final y(Ls35;)Z
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p1}, Ls35;->g()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, -0x1

    .line 12
    move v3, v1

    .line 13
    move v4, v2

    .line 14
    move v5, v4

    .line 15
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    const-string v7, "currency"

    .line 20
    .line 21
    const-string v8, "value"

    .line 22
    .line 23
    if-ge v3, v6, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    check-cast v6, Lc45;

    .line 30
    .line 31
    invoke-virtual {v6}, Lc45;->u()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-eqz v6, :cond_0

    .line 40
    .line 41
    move v4, v3

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    check-cast v6, Lc45;

    .line 48
    .line 49
    invoke-virtual {v6}, Lc45;->u()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-eqz v6, :cond_1

    .line 58
    .line 59
    move v5, v3

    .line 60
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    const/16 v3, 0x12

    .line 64
    .line 65
    const-string v6, "_c"

    .line 66
    .line 67
    if-ne v4, v2, :cond_3

    .line 68
    .line 69
    invoke-virtual {p0}, Lpb5;->e0()Lds4;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    const/4 v0, 0x0

    .line 74
    sget-object v2, Le05;->f1:Ld05;

    .line 75
    .line 76
    invoke-virtual {p0, v0, v2}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    if-eqz p0, :cond_6

    .line 81
    .line 82
    invoke-virtual {p1}, Ls35;->m()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    const-string v0, "_iap"

    .line 87
    .line 88
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    if-eqz p0, :cond_6

    .line 93
    .line 94
    invoke-static {p1, v6}, Lpb5;->E(Ls35;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-static {p1, v3, v8}, Lpb5;->D(Ls35;ILjava/lang/String;)V

    .line 98
    .line 99
    .line 100
    return v1

    .line 101
    :cond_3
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    check-cast v9, Lc45;

    .line 106
    .line 107
    invoke-virtual {v9}, Lc45;->x()Z

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    if-nez v9, :cond_4

    .line 112
    .line 113
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v9

    .line 117
    check-cast v9, Lc45;

    .line 118
    .line 119
    invoke-virtual {v9}, Lc45;->B()Z

    .line 120
    .line 121
    .line 122
    move-result v9

    .line 123
    if-nez v9, :cond_4

    .line 124
    .line 125
    invoke-virtual {p0}, Lpb5;->c()La25;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    iget-object p0, p0, La25;->k:Lx15;

    .line 130
    .line 131
    const-string v0, "Value must be specified with a numeric type."

    .line 132
    .line 133
    invoke-virtual {p0, v0}, Lx15;->a(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, v4}, Ls35;->l(I)V

    .line 137
    .line 138
    .line 139
    invoke-static {p1, v6}, Lpb5;->E(Ls35;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-static {p1, v3, v8}, Lpb5;->D(Ls35;ILjava/lang/String;)V

    .line 143
    .line 144
    .line 145
    return v1

    .line 146
    :cond_4
    if-ne v5, v2, :cond_5

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_5
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    check-cast v0, Lc45;

    .line 154
    .line 155
    invoke-virtual {v0}, Lc45;->w()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    const/4 v3, 0x3

    .line 164
    if-ne v2, v3, :cond_7

    .line 165
    .line 166
    move v2, v1

    .line 167
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    if-ge v2, v3, :cond_6

    .line 172
    .line 173
    invoke-virtual {v0, v2}, Ljava/lang/String;->codePointAt(I)I

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    invoke-static {v3}, Ljava/lang/Character;->isLetter(I)Z

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    if-eqz v5, :cond_7

    .line 182
    .line 183
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    add-int/2addr v2, v3

    .line 188
    goto :goto_2

    .line 189
    :cond_6
    const/4 p0, 0x1

    .line 190
    return p0

    .line 191
    :cond_7
    :goto_3
    invoke-virtual {p0}, Lpb5;->c()La25;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    iget-object p0, p0, La25;->k:Lx15;

    .line 196
    .line 197
    const-string v0, "Value parameter discarded. You must also supply a 3-letter ISO_4217 currency code in the currency parameter."

    .line 198
    .line 199
    invoke-virtual {p0, v0}, Lx15;->a(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1, v4}, Ls35;->l(I)V

    .line 203
    .line 204
    .line 205
    invoke-static {p1, v6}, Lpb5;->E(Ls35;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    const/16 p0, 0x13

    .line 209
    .line 210
    invoke-static {p1, p0, v7}, Lpb5;->D(Ls35;ILjava/lang/String;)V

    .line 211
    .line 212
    .line 213
    return v1
.end method

.method public final z(ZILjava/lang/Throwable;[BLjava/lang/String;Ljava/util/List;Ljava/util/Map;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    iget-object v9, v1, Lpb5;->b:Li25;

    .line 8
    .line 9
    invoke-virtual {v1}, Lpb5;->d()Lj45;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {v3}, Lj45;->v()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lpb5;->l0()V

    .line 17
    .line 18
    .line 19
    const/4 v10, 0x0

    .line 20
    if-nez p4, :cond_0

    .line 21
    .line 22
    :try_start_0
    new-array v3, v10, [B

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    goto/16 :goto_b

    .line 27
    .line 28
    :cond_0
    move-object/from16 v3, p4

    .line 29
    .line 30
    :goto_0
    invoke-virtual {v1}, Lpb5;->e0()Lds4;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    sget-object v5, Le05;->e1:Ld05;

    .line 35
    .line 36
    const/4 v11, 0x0

    .line 37
    invoke-virtual {v4, v11, v5}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_1

    .line 42
    .line 43
    iget-object v4, v1, Lpb5;->g:Lub5;

    .line 44
    .line 45
    invoke-static {v4}, Lpb5;->T(Lab5;)V

    .line 46
    .line 47
    .line 48
    move-object/from16 v5, p7

    .line 49
    .line 50
    invoke-virtual {v4, v5}, Lub5;->B(Ljava/util/Map;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    iget-object v4, v1, Lpb5;->y:Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    move-object v12, v4

    .line 60
    check-cast v12, Ljava/util/List;

    .line 61
    .line 62
    iput-object v11, v1, Lpb5;->y:Ljava/util/ArrayList;

    .line 63
    .line 64
    if-eqz p1, :cond_6

    .line 65
    .line 66
    const/16 v4, 0xc8

    .line 67
    .line 68
    if-eq v0, v4, :cond_2

    .line 69
    .line 70
    const/16 v4, 0xcc

    .line 71
    .line 72
    if-ne v0, v4, :cond_3

    .line 73
    .line 74
    move v0, v4

    .line 75
    :cond_2
    if-eqz v2, :cond_6

    .line 76
    .line 77
    :cond_3
    new-instance v4, Ljava/lang/String;

    .line 78
    .line 79
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 80
    .line 81
    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    const/16 v5, 0x20

    .line 89
    .line 90
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    invoke-virtual {v4, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    iget-object v4, v4, La25;->k:Lx15;

    .line 103
    .line 104
    const-string v5, "Network upload failed. Will retry later. code, error"

    .line 105
    .line 106
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    invoke-virtual {v4, v5, v6, v2, v3}, Lx15;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    iget-object v2, v1, Lpb5;->i:Lr95;

    .line 114
    .line 115
    iget-object v2, v2, Lr95;->i:Ly25;

    .line 116
    .line 117
    invoke-virtual {v1}, Lpb5;->f()Lcom/google/android/gms/common/util/Clock;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 122
    .line 123
    .line 124
    move-result-wide v3

    .line 125
    invoke-virtual {v2, v3, v4}, Ly25;->b(J)V

    .line 126
    .line 127
    .line 128
    const/16 v2, 0x1f7

    .line 129
    .line 130
    if-eq v0, v2, :cond_4

    .line 131
    .line 132
    const/16 v2, 0x1ad

    .line 133
    .line 134
    if-ne v0, v2, :cond_5

    .line 135
    .line 136
    :cond_4
    iget-object v0, v1, Lpb5;->i:Lr95;

    .line 137
    .line 138
    iget-object v0, v0, Lr95;->g:Ly25;

    .line 139
    .line 140
    invoke-virtual {v1}, Lpb5;->f()Lcom/google/android/gms/common/util/Clock;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 145
    .line 146
    .line 147
    move-result-wide v2

    .line 148
    invoke-virtual {v0, v2, v3}, Ly25;->b(J)V

    .line 149
    .line 150
    .line 151
    :cond_5
    iget-object v0, v1, Lpb5;->c:Lat4;

    .line 152
    .line 153
    invoke-static {v0}, Lpb5;->T(Lab5;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v12}, Lat4;->G(Ljava/util/List;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1}, Lpb5;->N()V

    .line 160
    .line 161
    .line 162
    goto/16 :goto_a

    .line 163
    .line 164
    :cond_6
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    iget-object v2, v2, La25;->n:Lx15;

    .line 169
    .line 170
    const-string v4, "Network upload successful with code, uploadAttempted"

    .line 171
    .line 172
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    invoke-virtual {v2, v0, v5, v4}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    .line 182
    .line 183
    if-eqz p1, :cond_7

    .line 184
    .line 185
    :try_start_1
    iget-object v2, v1, Lpb5;->i:Lr95;

    .line 186
    .line 187
    iget-object v2, v2, Lr95;->h:Ly25;

    .line 188
    .line 189
    invoke-virtual {v1}, Lpb5;->f()Lcom/google/android/gms/common/util/Clock;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 194
    .line 195
    .line 196
    move-result-wide v4

    .line 197
    invoke-virtual {v2, v4, v5}, Ly25;->b(J)V

    .line 198
    .line 199
    .line 200
    goto :goto_1

    .line 201
    :catch_0
    move-exception v0

    .line 202
    goto/16 :goto_9

    .line 203
    .line 204
    :cond_7
    :goto_1
    iget-object v2, v1, Lpb5;->i:Lr95;

    .line 205
    .line 206
    iget-object v2, v2, Lr95;->i:Ly25;

    .line 207
    .line 208
    const-wide/16 v13, 0x0

    .line 209
    .line 210
    invoke-virtual {v2, v13, v14}, Ly25;->b(J)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1}, Lpb5;->N()V

    .line 214
    .line 215
    .line 216
    if-eqz p1, :cond_8

    .line 217
    .line 218
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    iget-object v2, v2, La25;->n:Lx15;

    .line 223
    .line 224
    const-string v4, "Successful upload. Got network response. code, size"

    .line 225
    .line 226
    array-length v3, v3

    .line 227
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    invoke-virtual {v2, v0, v3, v4}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    goto :goto_2

    .line 235
    :cond_8
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    iget-object v0, v0, La25;->n:Lx15;

    .line 240
    .line 241
    const-string v2, "Purged empty bundles"

    .line 242
    .line 243
    invoke-virtual {v0, v2}, Lx15;->a(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    :goto_2
    iget-object v0, v1, Lpb5;->c:Lat4;

    .line 247
    .line 248
    invoke-static {v0}, Lpb5;->T(Lab5;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0}, Lat4;->j0()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    .line 253
    .line 254
    :try_start_2
    new-instance v0, Ljava/util/HashMap;

    .line 255
    .line 256
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 257
    .line 258
    .line 259
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 260
    .line 261
    .line 262
    move-result-object v15

    .line 263
    :cond_9
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 264
    .line 265
    .line 266
    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 267
    const-wide/16 v3, -0x1

    .line 268
    .line 269
    sget-object v5, Lv75;->r:Lv75;

    .line 270
    .line 271
    if-eqz v2, :cond_c

    .line 272
    .line 273
    :try_start_3
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    check-cast v2, Landroid/util/Pair;

    .line 278
    .line 279
    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 280
    .line 281
    check-cast v6, Lp45;

    .line 282
    .line 283
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 284
    .line 285
    check-cast v2, Lcb5;

    .line 286
    .line 287
    iget-object v7, v2, Lcb5;->c:Lv75;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 288
    .line 289
    iget-object v8, v2, Lcb5;->c:Lv75;

    .line 290
    .line 291
    if-eq v7, v5, :cond_9

    .line 292
    .line 293
    :try_start_4
    iget-object v5, v1, Lpb5;->c:Lat4;

    .line 294
    .line 295
    invoke-static {v5}, Lpb5;->T(Lab5;)V

    .line 296
    .line 297
    .line 298
    move-object v7, v5

    .line 299
    iget-object v5, v2, Lcb5;->a:Ljava/lang/String;

    .line 300
    .line 301
    iget-object v2, v2, Lcb5;->b:Ljava/util/Map;

    .line 302
    .line 303
    if-nez v2, :cond_a

    .line 304
    .line 305
    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 306
    .line 307
    :cond_a
    move-object/from16 v16, v7

    .line 308
    .line 309
    move-object v7, v8

    .line 310
    const/4 v8, 0x0

    .line 311
    move-wide v13, v3

    .line 312
    move-object v4, v6

    .line 313
    move-object/from16 v3, p5

    .line 314
    .line 315
    move-object v6, v2

    .line 316
    move-object/from16 v2, v16

    .line 317
    .line 318
    invoke-virtual/range {v2 .. v8}, Lat4;->z(Ljava/lang/String;Lp45;Ljava/lang/String;Ljava/util/Map;Lv75;Ljava/lang/Long;)J

    .line 319
    .line 320
    .line 321
    move-result-wide v5

    .line 322
    sget-object v2, Lv75;->s:Lv75;

    .line 323
    .line 324
    if-ne v7, v2, :cond_b

    .line 325
    .line 326
    cmp-long v2, v5, v13

    .line 327
    .line 328
    if-eqz v2, :cond_b

    .line 329
    .line 330
    invoke-virtual {v4}, Lp45;->x()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 335
    .line 336
    .line 337
    move-result v2

    .line 338
    if-nez v2, :cond_b

    .line 339
    .line 340
    invoke-virtual {v4}, Lp45;->x()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v2

    .line 344
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 345
    .line 346
    .line 347
    move-result-object v3

    .line 348
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    :cond_b
    const-wide/16 v13, 0x0

    .line 352
    .line 353
    goto :goto_3

    .line 354
    :catchall_1
    move-exception v0

    .line 355
    goto/16 :goto_8

    .line 356
    .line 357
    :cond_c
    move-wide v13, v3

    .line 358
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 359
    .line 360
    .line 361
    move-result-object v15

    .line 362
    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 363
    .line 364
    .line 365
    move-result v2

    .line 366
    if-eqz v2, :cond_f

    .line 367
    .line 368
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v2

    .line 372
    check-cast v2, Landroid/util/Pair;

    .line 373
    .line 374
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 375
    .line 376
    move-object v4, v3

    .line 377
    check-cast v4, Lp45;

    .line 378
    .line 379
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 380
    .line 381
    check-cast v2, Lcb5;

    .line 382
    .line 383
    iget-object v3, v2, Lcb5;->c:Lv75;

    .line 384
    .line 385
    if-ne v3, v5, :cond_e

    .line 386
    .line 387
    invoke-virtual {v4}, Lp45;->x()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v3

    .line 391
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v3

    .line 395
    move-object v8, v3

    .line 396
    check-cast v8, Ljava/lang/Long;

    .line 397
    .line 398
    iget-object v3, v1, Lpb5;->c:Lat4;

    .line 399
    .line 400
    invoke-static {v3}, Lpb5;->T(Lab5;)V

    .line 401
    .line 402
    .line 403
    move-object v6, v5

    .line 404
    iget-object v5, v2, Lcb5;->a:Ljava/lang/String;

    .line 405
    .line 406
    iget-object v7, v2, Lcb5;->b:Ljava/util/Map;

    .line 407
    .line 408
    if-nez v7, :cond_d

    .line 409
    .line 410
    sget-object v7, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 411
    .line 412
    :cond_d
    iget-object v2, v2, Lcb5;->c:Lv75;

    .line 413
    .line 414
    move-object/from16 v16, v6

    .line 415
    .line 416
    move-object v6, v7

    .line 417
    move-object v7, v2

    .line 418
    move-object v2, v3

    .line 419
    move-object/from16 v3, p5

    .line 420
    .line 421
    invoke-virtual/range {v2 .. v8}, Lat4;->z(Ljava/lang/String;Lp45;Ljava/lang/String;Ljava/util/Map;Lv75;Ljava/lang/Long;)J

    .line 422
    .line 423
    .line 424
    move-object/from16 v5, v16

    .line 425
    .line 426
    goto :goto_4

    .line 427
    :cond_e
    move-object/from16 v3, p5

    .line 428
    .line 429
    goto :goto_4

    .line 430
    :cond_f
    move-object/from16 v3, p5

    .line 431
    .line 432
    move-object/from16 v16, v5

    .line 433
    .line 434
    iget-object v0, v1, Lpb5;->c:Lat4;

    .line 435
    .line 436
    invoke-static {v0}, Lpb5;->T(Lab5;)V

    .line 437
    .line 438
    .line 439
    filled-new-array/range {v16 .. v16}, [Lv75;

    .line 440
    .line 441
    .line 442
    move-result-object v2

    .line 443
    invoke-static {v2}, Lwa5;->Y([Lv75;)Lwa5;

    .line 444
    .line 445
    .line 446
    move-result-object v2

    .line 447
    const/4 v4, 0x1

    .line 448
    invoke-virtual {v0, v3, v2, v4}, Lat4;->A(Ljava/lang/String;Lwa5;I)Ljava/util/List;

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 453
    .line 454
    .line 455
    move-result v2

    .line 456
    if-nez v2, :cond_10

    .line 457
    .line 458
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v0

    .line 462
    check-cast v0, Ltb5;

    .line 463
    .line 464
    iget-wide v4, v0, Ltb5;->f:J

    .line 465
    .line 466
    invoke-virtual {v1}, Lpb5;->f()Lcom/google/android/gms/common/util/Clock;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 471
    .line 472
    .line 473
    move-result-wide v6

    .line 474
    sget-object v0, Le05;->F:Ld05;

    .line 475
    .line 476
    invoke-virtual {v0, v11}, Ld05;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    check-cast v0, Ljava/lang/Long;

    .line 481
    .line 482
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 483
    .line 484
    .line 485
    move-result-wide v15

    .line 486
    add-long/2addr v15, v4

    .line 487
    cmp-long v0, v6, v15

    .line 488
    .line 489
    if-lez v0, :cond_10

    .line 490
    .line 491
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    iget-object v0, v0, La25;->i:Lx15;

    .line 496
    .line 497
    const-string v2, "[sgtm] client batches are queued too long. appId, creationTime"

    .line 498
    .line 499
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 500
    .line 501
    .line 502
    move-result-object v4

    .line 503
    invoke-virtual {v0, v3, v4, v2}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 504
    .line 505
    .line 506
    :cond_10
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 507
    .line 508
    .line 509
    move-result-object v2

    .line 510
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 511
    .line 512
    .line 513
    move-result v0

    .line 514
    if-eqz v0, :cond_12

    .line 515
    .line 516
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 517
    .line 518
    .line 519
    move-result-object v0

    .line 520
    move-object v4, v0

    .line 521
    check-cast v4, Ljava/lang/Long;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 522
    .line 523
    :try_start_5
    iget-object v0, v1, Lpb5;->c:Lat4;

    .line 524
    .line 525
    invoke-static {v0}, Lpb5;->T(Lab5;)V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 529
    .line 530
    .line 531
    move-result-wide v5

    .line 532
    invoke-virtual {v0, v5, v6}, Lat4;->E(J)V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 533
    .line 534
    .line 535
    goto :goto_5

    .line 536
    :catch_1
    move-exception v0

    .line 537
    :try_start_6
    iget-object v5, v1, Lpb5;->z:Ljava/util/ArrayList;

    .line 538
    .line 539
    if-eqz v5, :cond_11

    .line 540
    .line 541
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 542
    .line 543
    .line 544
    move-result v4

    .line 545
    if-eqz v4, :cond_11

    .line 546
    .line 547
    goto :goto_5

    .line 548
    :cond_11
    throw v0

    .line 549
    :cond_12
    iget-object v0, v1, Lpb5;->c:Lat4;

    .line 550
    .line 551
    invoke-static {v0}, Lpb5;->T(Lab5;)V

    .line 552
    .line 553
    .line 554
    invoke-virtual {v0}, Lat4;->k0()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 555
    .line 556
    .line 557
    :try_start_7
    iget-object v0, v1, Lpb5;->c:Lat4;

    .line 558
    .line 559
    invoke-static {v0}, Lpb5;->T(Lab5;)V

    .line 560
    .line 561
    .line 562
    invoke-virtual {v0}, Lat4;->l0()V

    .line 563
    .line 564
    .line 565
    iput-object v11, v1, Lpb5;->z:Ljava/util/ArrayList;

    .line 566
    .line 567
    invoke-static {v9}, Lpb5;->T(Lab5;)V

    .line 568
    .line 569
    .line 570
    invoke-virtual {v9}, Li25;->z()Z

    .line 571
    .line 572
    .line 573
    move-result v0

    .line 574
    if-eqz v0, :cond_13

    .line 575
    .line 576
    iget-object v0, v1, Lpb5;->c:Lat4;

    .line 577
    .line 578
    invoke-static {v0}, Lpb5;->T(Lab5;)V

    .line 579
    .line 580
    .line 581
    invoke-virtual {v0, v3}, Lat4;->B(Ljava/lang/String;)Z

    .line 582
    .line 583
    .line 584
    move-result v0

    .line 585
    if-eqz v0, :cond_13

    .line 586
    .line 587
    invoke-virtual {v1, v3}, Lpb5;->t(Ljava/lang/String;)V

    .line 588
    .line 589
    .line 590
    :goto_6
    const-wide/16 v2, 0x0

    .line 591
    .line 592
    goto :goto_7

    .line 593
    :cond_13
    invoke-static {v9}, Lpb5;->T(Lab5;)V

    .line 594
    .line 595
    .line 596
    invoke-virtual {v9}, Li25;->z()Z

    .line 597
    .line 598
    .line 599
    move-result v0

    .line 600
    if-eqz v0, :cond_14

    .line 601
    .line 602
    invoke-virtual {v1}, Lpb5;->M()Z

    .line 603
    .line 604
    .line 605
    move-result v0

    .line 606
    if-eqz v0, :cond_14

    .line 607
    .line 608
    invoke-virtual {v1}, Lpb5;->q()V

    .line 609
    .line 610
    .line 611
    goto :goto_6

    .line 612
    :cond_14
    iput-wide v13, v1, Lpb5;->A:J

    .line 613
    .line 614
    invoke-virtual {v1}, Lpb5;->N()V

    .line 615
    .line 616
    .line 617
    goto :goto_6

    .line 618
    :goto_7
    iput-wide v2, v1, Lpb5;->o:J

    .line 619
    .line 620
    goto :goto_a

    .line 621
    :goto_8
    iget-object v2, v1, Lpb5;->c:Lat4;

    .line 622
    .line 623
    invoke-static {v2}, Lpb5;->T(Lab5;)V

    .line 624
    .line 625
    .line 626
    invoke-virtual {v2}, Lat4;->l0()V

    .line 627
    .line 628
    .line 629
    throw v0
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 630
    :goto_9
    :try_start_8
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 631
    .line 632
    .line 633
    move-result-object v2

    .line 634
    iget-object v2, v2, La25;->f:Lx15;

    .line 635
    .line 636
    const-string v3, "Database error while trying to delete uploaded bundles"

    .line 637
    .line 638
    invoke-virtual {v2, v0, v3}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 639
    .line 640
    .line 641
    invoke-virtual {v1}, Lpb5;->f()Lcom/google/android/gms/common/util/Clock;

    .line 642
    .line 643
    .line 644
    move-result-object v0

    .line 645
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 646
    .line 647
    .line 648
    move-result-wide v2

    .line 649
    iput-wide v2, v1, Lpb5;->o:J

    .line 650
    .line 651
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 652
    .line 653
    .line 654
    move-result-object v0

    .line 655
    iget-object v0, v0, La25;->n:Lx15;

    .line 656
    .line 657
    const-string v2, "Disable upload, time"

    .line 658
    .line 659
    iget-wide v3, v1, Lpb5;->o:J

    .line 660
    .line 661
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 662
    .line 663
    .line 664
    move-result-object v3

    .line 665
    invoke-virtual {v0, v3, v2}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 666
    .line 667
    .line 668
    :goto_a
    iput-boolean v10, v1, Lpb5;->u:Z

    .line 669
    .line 670
    invoke-virtual {v1}, Lpb5;->O()V

    .line 671
    .line 672
    .line 673
    return-void

    .line 674
    :goto_b
    iput-boolean v10, v1, Lpb5;->u:Z

    .line 675
    .line 676
    invoke-virtual {v1}, Lpb5;->O()V

    .line 677
    .line 678
    .line 679
    throw v0
.end method
