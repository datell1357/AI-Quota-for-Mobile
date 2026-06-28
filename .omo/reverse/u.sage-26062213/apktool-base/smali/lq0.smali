.class public final Llq0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic n:I

.field public o:Z

.field public final p:Ljava/lang/Object;

.field public final q:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lpq3;Lpq3;ZLdi;)V
    .locals 0

    const/4 p4, 0x0

    iput p4, p0, Llq0;->n:I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llq0;->p:Ljava/lang/Object;

    iput-object p2, p0, Llq0;->q:Ljava/lang/Object;

    iput-boolean p3, p0, Llq0;->o:Z

    return-void
.end method

.method public constructor <init>(Lr22;Lf22;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Llq0;->n:I

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Llq0;->p:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object p2, p0, Llq0;->q:Ljava/lang/Object;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Llq0;->n:I

    .line 2
    .line 3
    iget-object v1, p0, Llq0;->q:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Llq0;->p:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-boolean v0, p0, Llq0;->o:Z

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    check-cast v2, Lr22;

    .line 15
    .line 16
    check-cast v1, Lf22;

    .line 17
    .line 18
    invoke-virtual {v2, v1}, Lr22;->e(Lf22;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Llq0;->o:Z

    .line 23
    .line 24
    :cond_0
    return-void

    .line 25
    :pswitch_0
    check-cast v2, Lpq3;

    .line 26
    .line 27
    iget-object v0, v2, Lpq3;->c:Llc1;

    .line 28
    .line 29
    check-cast v1, Lpq3;

    .line 30
    .line 31
    iget-object v1, v1, Lpq3;->c:Llc1;

    .line 32
    .line 33
    iget-boolean p0, p0, Llq0;->o:Z

    .line 34
    .line 35
    sget-object v2, Lvd1;->a:Lae1;

    .line 36
    .line 37
    if-eqz p0, :cond_1

    .line 38
    .line 39
    invoke-virtual {v1}, Llc1;->getEnterTransitionCallback()Lsl3;

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {v0}, Llc1;->getEnterTransitionCallback()Lsl3;

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
