.class public final Lz94;
.super Lxx1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic o:I

.field public final synthetic p:Laa4;


# direct methods
.method public synthetic constructor <init>(Laa4;I)V
    .locals 0

    .line 1
    iput p2, p0, Lz94;->o:I

    .line 2
    .line 3
    iput-object p1, p0, Lz94;->p:Laa4;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lxx1;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lz94;->o:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    iget-object p0, p0, Lz94;->p:Laa4;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Lkx0;

    .line 11
    .line 12
    iget-object v0, p0, Laa4;->b:Lli1;

    .line 13
    .line 14
    iget v2, p0, Laa4;->k:F

    .line 15
    .line 16
    iget p0, p0, Laa4;->l:F

    .line 17
    .line 18
    invoke-interface {p1}, Lkx0;->z()Leh;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v3}, Leh;->z()J

    .line 23
    .line 24
    .line 25
    move-result-wide v4

    .line 26
    invoke-virtual {v3}, Leh;->u()Lv20;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    invoke-interface {v6}, Lv20;->j()V

    .line 31
    .line 32
    .line 33
    :try_start_0
    iget-object v6, v3, Leh;->o:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v6, Ldh1;

    .line 36
    .line 37
    const-wide/16 v7, 0x0

    .line 38
    .line 39
    invoke-virtual {v6, v2, p0, v7, v8}, Ldh1;->s(FFJ)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1}, Lli1;->a(Lkx0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Leh;->u()Lv20;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-interface {p0}, Lv20;->h()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v4, v5}, Leh;->K(J)V

    .line 53
    .line 54
    .line 55
    return-object v1

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    invoke-virtual {v3}, Leh;->u()Lv20;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-interface {p1}, Lv20;->h()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v4, v5}, Leh;->K(J)V

    .line 65
    .line 66
    .line 67
    throw p0

    .line 68
    :pswitch_0
    check-cast p1, Lu94;

    .line 69
    .line 70
    const/4 p1, 0x1

    .line 71
    iput-boolean p1, p0, Laa4;->d:Z

    .line 72
    .line 73
    iget-object p0, p0, Laa4;->f:Lne1;

    .line 74
    .line 75
    invoke-interface {p0}, Lne1;->a()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    return-object v1

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
