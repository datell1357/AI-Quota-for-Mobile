.class public final Lv73;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public a:Lk63;

.field public b:Ld03;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Laj1;

.field public f:Ldh1;

.field public g:Ly73;

.field public h:Ljp3;

.field public i:Lw73;

.field public j:Lw73;

.field public k:Lw73;

.field public l:J

.field public m:J

.field public n:Lmu0;

.field public o:La14;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lv73;->c:I

    .line 6
    .line 7
    sget-object v0, Ly73;->n:Lx73;

    .line 8
    .line 9
    iput-object v0, p0, Lv73;->g:Ly73;

    .line 10
    .line 11
    sget-object v0, La14;->e:Lpr3;

    .line 12
    .line 13
    iput-object v0, p0, Lv73;->o:La14;

    .line 14
    .line 15
    new-instance v0, Ldh1;

    .line 16
    .line 17
    const/16 v1, 0x13

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-direct {v0, v1, v2}, Ldh1;-><init>(IZ)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lv73;->f:Ldh1;

    .line 24
    .line 25
    return-void
.end method

.method public static b(Ljava/lang/String;Lw73;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    iget-object v0, p1, Lw73;->v:Lw73;

    .line 4
    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p1, Lw73;->w:Lw73;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object p1, p1, Lw73;->x:Lw73;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string p1, ".priorResponse != null"

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p0}, Lk21;->l(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    const-string p1, ".cacheResponse != null"

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-static {p0}, Lk21;->l(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    const-string p1, ".networkResponse != null"

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {p0}, Lk21;->l(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()Lw73;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v4, v0, Lv73;->c:I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-ltz v4, :cond_3

    .line 7
    .line 8
    move-object v2, v1

    .line 9
    iget-object v1, v0, Lv73;->a:Lk63;

    .line 10
    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    move-object v3, v2

    .line 14
    iget-object v2, v0, Lv73;->b:Ld03;

    .line 15
    .line 16
    move-object v5, v3

    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    iget-object v3, v0, Lv73;->d:Ljava/lang/String;

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    iget-object v5, v0, Lv73;->e:Laj1;

    .line 24
    .line 25
    iget-object v6, v0, Lv73;->f:Ldh1;

    .line 26
    .line 27
    invoke-virtual {v6}, Ldh1;->m()Lkj1;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    iget-object v7, v0, Lv73;->g:Ly73;

    .line 32
    .line 33
    iget-object v8, v0, Lv73;->h:Ljp3;

    .line 34
    .line 35
    iget-object v9, v0, Lv73;->i:Lw73;

    .line 36
    .line 37
    iget-object v10, v0, Lv73;->j:Lw73;

    .line 38
    .line 39
    iget-object v11, v0, Lv73;->k:Lw73;

    .line 40
    .line 41
    iget-wide v12, v0, Lv73;->l:J

    .line 42
    .line 43
    iget-wide v14, v0, Lv73;->m:J

    .line 44
    .line 45
    move-object/from16 v16, v1

    .line 46
    .line 47
    iget-object v1, v0, Lv73;->n:Lmu0;

    .line 48
    .line 49
    iget-object v0, v0, Lv73;->o:La14;

    .line 50
    .line 51
    move-object/from16 v17, v0

    .line 52
    .line 53
    new-instance v0, Lw73;

    .line 54
    .line 55
    move-object/from16 v18, v16

    .line 56
    .line 57
    move-object/from16 v16, v1

    .line 58
    .line 59
    move-object/from16 v1, v18

    .line 60
    .line 61
    invoke-direct/range {v0 .. v17}, Lw73;-><init>(Lk63;Ld03;Ljava/lang/String;ILaj1;Lkj1;Ly73;Ljp3;Lw73;Lw73;Lw73;JJLmu0;La14;)V

    .line 62
    .line 63
    .line 64
    return-object v0

    .line 65
    :cond_0
    const-string v0, "message == null"

    .line 66
    .line 67
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-object v5

    .line 71
    :cond_1
    const-string v0, "protocol == null"

    .line 72
    .line 73
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-object v5

    .line 77
    :cond_2
    move-object v5, v2

    .line 78
    const-string v0, "request == null"

    .line 79
    .line 80
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-object v5

    .line 84
    :cond_3
    move-object v5, v1

    .line 85
    const-string v1, "code < 0: "

    .line 86
    .line 87
    iget v0, v0, Lv73;->c:I

    .line 88
    .line 89
    invoke-static {v0, v1}, Lq73;->h(ILjava/lang/String;)V

    .line 90
    .line 91
    .line 92
    return-object v5
.end method
