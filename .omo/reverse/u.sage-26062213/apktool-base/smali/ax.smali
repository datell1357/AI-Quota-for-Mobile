.class public final synthetic Lax;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic n:Lzf5;

.field public final synthetic o:J

.field public final synthetic p:J

.field public final synthetic q:Ltv4;


# direct methods
.method public synthetic constructor <init>(Lsp3;JJLtv4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lax;->n:Lzf5;

    .line 5
    .line 6
    iput-wide p2, p0, Lax;->o:J

    .line 7
    .line 8
    iput-wide p4, p0, Lax;->p:J

    .line 9
    .line 10
    iput-object p6, p0, Lax;->q:Ltv4;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lzy1;

    .line 3
    .line 4
    invoke-virtual {v0}, Lzy1;->a()V

    .line 5
    .line 6
    .line 7
    const/16 p1, 0x68

    .line 8
    .line 9
    and-int/lit8 v1, p1, 0x2

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const-wide/16 v1, 0x0

    .line 14
    .line 15
    :goto_0
    move-wide v2, v1

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    iget-wide v1, p0, Lax;->o:J

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :goto_1
    and-int/lit8 v1, p1, 0x4

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-interface {v0}, Lkx0;->d()J

    .line 25
    .line 26
    .line 27
    move-result-wide v4

    .line 28
    invoke-static {v4, v5, v2, v3}, Lkx0;->t0(JJ)J

    .line 29
    .line 30
    .line 31
    move-result-wide v4

    .line 32
    goto :goto_2

    .line 33
    :cond_1
    iget-wide v4, p0, Lax;->p:J

    .line 34
    .line 35
    :goto_2
    and-int/lit8 v1, p1, 0x8

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    const/high16 v1, 0x3f800000    # 1.0f

    .line 40
    .line 41
    :goto_3
    move v6, v1

    .line 42
    goto :goto_4

    .line 43
    :cond_2
    const/4 v1, 0x0

    .line 44
    goto :goto_3

    .line 45
    :goto_4
    and-int/lit8 p1, p1, 0x10

    .line 46
    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    sget-object p1, Lt51;->f:Lt51;

    .line 50
    .line 51
    :goto_5
    move-object v7, p1

    .line 52
    goto :goto_6

    .line 53
    :cond_3
    iget-object p1, p0, Lax;->q:Ltv4;

    .line 54
    .line 55
    goto :goto_5

    .line 56
    :goto_6
    iget-object v1, p0, Lax;->n:Lzf5;

    .line 57
    .line 58
    invoke-interface/range {v0 .. v7}, Lkx0;->E(Lzf5;JJFLtv4;)V

    .line 59
    .line 60
    .line 61
    sget-object p0, Lt64;->a:Lt64;

    .line 62
    .line 63
    return-object p0
.end method
