.class public final synthetic Lcx;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic n:Ll33;

.field public final synthetic o:Lw33;

.field public final synthetic p:J

.field public final synthetic q:Low;


# direct methods
.method public synthetic constructor <init>(Ll33;Lw33;JLow;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcx;->n:Ll33;

    .line 5
    .line 6
    iput-object p2, p0, Lcx;->o:Lw33;

    .line 7
    .line 8
    iput-wide p3, p0, Lcx;->p:J

    .line 9
    .line 10
    iput-object p5, p0, Lcx;->q:Low;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget-object v0, p0, Lcx;->o:Lw33;

    .line 2
    .line 3
    iget-wide v3, p0, Lcx;->p:J

    .line 4
    .line 5
    iget-object v8, p0, Lcx;->q:Low;

    .line 6
    .line 7
    move-object v1, p1

    .line 8
    check-cast v1, Lzy1;

    .line 9
    .line 10
    invoke-virtual {v1}, Lzy1;->a()V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcx;->n:Ll33;

    .line 14
    .line 15
    iget p1, p0, Ll33;->a:F

    .line 16
    .line 17
    iget p0, p0, Ll33;->b:F

    .line 18
    .line 19
    iget-object v11, v1, Lzy1;->n:Lx20;

    .line 20
    .line 21
    iget-object v2, v11, Lx20;->o:Leh;

    .line 22
    .line 23
    iget-object v2, v2, Leh;->o:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v2, Ldh1;

    .line 26
    .line 27
    invoke-virtual {v2, p1, p0}, Ldh1;->t(FF)V

    .line 28
    .line 29
    .line 30
    :try_start_0
    iget-object v0, v0, Lw33;->n:Ljava/lang/Object;

    .line 31
    .line 32
    move-object v2, v0

    .line 33
    check-cast v2, Lgb;

    .line 34
    .line 35
    const/4 v9, 0x0

    .line 36
    const/16 v10, 0x37a

    .line 37
    .line 38
    const-wide/16 v5, 0x0

    .line 39
    .line 40
    const/4 v7, 0x0

    .line 41
    invoke-static/range {v1 .. v10}, Lkx0;->P(Lkx0;Lgb;JJFLow;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    iget-object v0, v11, Lx20;->o:Leh;

    .line 45
    .line 46
    iget-object v0, v0, Leh;->o:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v0, Ldh1;

    .line 49
    .line 50
    neg-float p1, p1

    .line 51
    neg-float p0, p0

    .line 52
    invoke-virtual {v0, p1, p0}, Ldh1;->t(FF)V

    .line 53
    .line 54
    .line 55
    sget-object p0, Lt64;->a:Lt64;

    .line 56
    .line 57
    return-object p0

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    iget-object v1, v11, Lx20;->o:Leh;

    .line 60
    .line 61
    iget-object v1, v1, Leh;->o:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v1, Ldh1;

    .line 64
    .line 65
    neg-float p1, p1

    .line 66
    neg-float p0, p0

    .line 67
    invoke-virtual {v1, p1, p0}, Ldh1;->t(FF)V

    .line 68
    .line 69
    .line 70
    throw v0
.end method
