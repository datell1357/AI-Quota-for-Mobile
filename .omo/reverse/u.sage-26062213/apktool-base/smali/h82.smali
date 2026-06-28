.class public final Lh82;
.super Lxx1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lne1;


# instance fields
.field public final synthetic o:I

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;

.field public final synthetic r:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lh82;->o:I

    .line 2
    .line 3
    iput-object p1, p0, Lh82;->p:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lh82;->q:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lh82;->r:Ljava/lang/Object;

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-direct {p0, p1}, Lxx1;-><init>(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lh82;->o:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    iget-object v2, p0, Lh82;->r:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Lh82;->q:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object p0, p0, Lh82;->p:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast p0, La0;

    .line 15
    .line 16
    check-cast v3, Leb;

    .line 17
    .line 18
    invoke-virtual {p0, v3}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 19
    .line 20
    .line 21
    check-cast v2, Lq73;

    .line 22
    .line 23
    invoke-static {p0}, Lnt1;->B(Landroid/view/View;)Lww2;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    iget-object p0, p0, Lww2;->a:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    return-object v1

    .line 33
    :pswitch_0
    check-cast p0, Ldf1;

    .line 34
    .line 35
    check-cast v3, Lw33;

    .line 36
    .line 37
    iget-object v0, v3, Lw33;->n:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v0, Lk82;

    .line 40
    .line 41
    check-cast v2, Lek1;

    .line 42
    .line 43
    iget-object v3, v0, Lk82;->z:Lkg2;

    .line 44
    .line 45
    if-nez v3, :cond_0

    .line 46
    .line 47
    sget-object v3, Ltd3;->a:[J

    .line 48
    .line 49
    new-instance v3, Lkg2;

    .line 50
    .line 51
    invoke-direct {v3}, Lkg2;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v3, v0, Lk82;->z:Lkg2;

    .line 55
    .line 56
    :cond_0
    invoke-virtual {v3, v2}, Lkg2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    if-nez v4, :cond_1

    .line 61
    .line 62
    new-instance v4, Lf82;

    .line 63
    .line 64
    invoke-direct {v4, v0}, Lf82;-><init>(Lk82;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, v2, v4}, Lkg2;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    check-cast v4, Lf82;

    .line 71
    .line 72
    const/4 v0, 0x0

    .line 73
    iput-boolean v0, v4, Lf82;->n:Z

    .line 74
    .line 75
    invoke-interface {p0, v4, v2}, Ldf1;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
