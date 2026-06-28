.class public final Lov4;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:J

.field public final synthetic p:Laz4;


# direct methods
.method public constructor <init>(Lbx4;J)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lov4;->n:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-wide p2, p0, Lov4;->o:J

    .line 8
    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lov4;->p:Laz4;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Lf85;J)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lov4;->n:I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lov4;->o:J

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lov4;->p:Laz4;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lov4;->n:I

    .line 2
    .line 3
    iget-wide v1, p0, Lov4;->o:J

    .line 4
    .line 5
    iget-object p0, p0, Lov4;->p:Laz4;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Lf85;

    .line 11
    .line 12
    iget-object v0, p0, Lib0;->a:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lr45;

    .line 15
    .line 16
    iget-object v0, v0, Lr45;->n:Lbx4;

    .line 17
    .line 18
    invoke-static {v0}, Lr45;->i(Laz4;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Lbx4;->y(J)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lf85;->e:Lw75;

    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_0
    check-cast p0, Lbx4;

    .line 29
    .line 30
    invoke-virtual {p0, v1, v2}, Lbx4;->B(J)V

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
