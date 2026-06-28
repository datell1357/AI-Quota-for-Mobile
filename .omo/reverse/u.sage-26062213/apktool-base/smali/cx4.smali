.class public final Lcx4;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lfc5;
.implements Ljp2;
.implements Lbp2;
.implements Lwo2;


# instance fields
.field public final synthetic n:I

.field public final o:Ljava/util/concurrent/Executor;

.field public final p:Leh0;

.field public final q:Lef5;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Leh0;Lef5;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcx4;->n:I

    .line 2
    .line 3
    iput-object p1, p0, Lcx4;->o:Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    iput-object p2, p0, Lcx4;->p:Leh0;

    .line 6
    .line 7
    iput-object p3, p0, Lcx4;->q:Lef5;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcx4;->q:Lef5;

    .line 2
    .line 3
    invoke-virtual {p0}, Lef5;->q()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b(Low3;)V
    .locals 3

    .line 1
    iget v0, p0, Lcx4;->n:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lrf1;

    .line 7
    .line 8
    const/16 v1, 0x11

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v0, v1, p0, p1, v2}, Lrf1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcx4;->o:Ljava/util/concurrent/Executor;

    .line 15
    .line 16
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    new-instance v0, Lrf1;

    .line 21
    .line 22
    const/16 v1, 0x10

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-direct {v0, v1, p0, p1, v2}, Lrf1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcx4;->o:Ljava/util/concurrent/Executor;

    .line 29
    .line 30
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public c(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcx4;->q:Lef5;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lef5;->p(Ljava/lang/Exception;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcx4;->q:Lef5;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lef5;->n(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
