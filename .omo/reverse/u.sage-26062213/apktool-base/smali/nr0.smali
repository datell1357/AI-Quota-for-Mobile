.class public final synthetic Lnr0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/Runnable;

.field public final synthetic p:Lwu4;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;Lwu4;I)V
    .locals 0

    .line 1
    iput p3, p0, Lnr0;->n:I

    .line 2
    .line 3
    iput-object p1, p0, Lnr0;->o:Ljava/lang/Runnable;

    .line 4
    .line 5
    iput-object p2, p0, Lnr0;->p:Lwu4;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lnr0;->n:I

    .line 2
    .line 3
    iget-object v1, p0, Lnr0;->p:Lwu4;

    .line 4
    .line 5
    iget-object p0, p0, Lnr0;->o:Ljava/lang/Runnable;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v0, v1, Lwu4;->o:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lsr0;

    .line 13
    .line 14
    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    invoke-virtual {v0, p0}, Lb2;->j(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    invoke-virtual {v0, p0}, Lb2;->k(Ljava/lang/Throwable;)Z

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void

    .line 27
    :pswitch_0
    :try_start_1
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :catch_1
    move-exception p0

    .line 32
    iget-object v0, v1, Lwu4;->o:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Lsr0;

    .line 35
    .line 36
    invoke-virtual {v0, p0}, Lb2;->k(Ljava/lang/Throwable;)Z

    .line 37
    .line 38
    .line 39
    :goto_1
    return-void

    .line 40
    :pswitch_1
    :try_start_2
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :catch_2
    move-exception p0

    .line 45
    iget-object v0, v1, Lwu4;->o:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v0, Lsr0;

    .line 48
    .line 49
    invoke-virtual {v0, p0}, Lb2;->k(Ljava/lang/Throwable;)Z

    .line 50
    .line 51
    .line 52
    throw p0

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
