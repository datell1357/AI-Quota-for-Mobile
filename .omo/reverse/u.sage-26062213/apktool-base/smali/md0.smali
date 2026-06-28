.class public final Lmd0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;

.field public final b:Lzp0;

.field public final c:Ljava/util/concurrent/ExecutorService;

.field public final d:Lpr3;

.field public final e:Lw13;

.field public final f:Lw13;

.field public final g:Lwu4;

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:Z

.field public final m:Lqv3;


# direct methods
.method public constructor <init>(Lbx3;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    invoke-static {p1}, Lfl4;->e(Z)Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lmd0;->a:Ljava/util/concurrent/ExecutorService;

    .line 10
    .line 11
    sget-object p1, Lzu0;->a:Lzp0;

    .line 12
    .line 13
    iput-object p1, p0, Lmd0;->b:Lzp0;

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    invoke-static {p1}, Lfl4;->e(Z)Ljava/util/concurrent/ExecutorService;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lmd0;->c:Ljava/util/concurrent/ExecutorService;

    .line 21
    .line 22
    new-instance v0, Lpr3;

    .line 23
    .line 24
    const/4 v1, 0x4

    .line 25
    invoke-direct {v0, v1}, Lpr3;-><init>(I)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lmd0;->d:Lpr3;

    .line 29
    .line 30
    sget-object v0, Lw13;->w:Lw13;

    .line 31
    .line 32
    iput-object v0, p0, Lmd0;->e:Lw13;

    .line 33
    .line 34
    sget-object v0, Lw13;->K:Lw13;

    .line 35
    .line 36
    iput-object v0, p0, Lmd0;->f:Lw13;

    .line 37
    .line 38
    new-instance v0, Lwu4;

    .line 39
    .line 40
    const/16 v2, 0x15

    .line 41
    .line 42
    invoke-direct {v0, v2}, Lwu4;-><init>(I)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lmd0;->g:Lwu4;

    .line 46
    .line 47
    iput v1, p0, Lmd0;->h:I

    .line 48
    .line 49
    const v0, 0x7fffffff

    .line 50
    .line 51
    .line 52
    iput v0, p0, Lmd0;->i:I

    .line 53
    .line 54
    const/16 v0, 0x14

    .line 55
    .line 56
    iput v0, p0, Lmd0;->k:I

    .line 57
    .line 58
    const/16 v0, 0x8

    .line 59
    .line 60
    iput v0, p0, Lmd0;->j:I

    .line 61
    .line 62
    iput-boolean p1, p0, Lmd0;->l:Z

    .line 63
    .line 64
    new-instance p1, Lqv3;

    .line 65
    .line 66
    invoke-direct {p1, v2}, Lqv3;-><init>(I)V

    .line 67
    .line 68
    .line 69
    iput-object p1, p0, Lmd0;->m:Lqv3;

    .line 70
    .line 71
    return-void
.end method
