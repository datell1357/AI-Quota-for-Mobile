.class public final synthetic Lgf3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lne1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Lhf3;


# direct methods
.method public synthetic constructor <init>(Lhf3;I)V
    .locals 0

    .line 1
    iput p2, p0, Lgf3;->n:I

    .line 2
    .line 3
    iput-object p1, p0, Lgf3;->o:Lhf3;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lgf3;->n:I

    .line 2
    .line 3
    iget-object p0, p0, Lgf3;->o:Lhf3;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lhf3;->B:Llf3;

    .line 9
    .line 10
    iget-object p0, p0, Llf3;->f:Lts2;

    .line 11
    .line 12
    invoke-virtual {p0}, Lts2;->g()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    :goto_0
    int-to-float p0, p0

    .line 17
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :pswitch_0
    iget-object p0, p0, Lhf3;->B:Llf3;

    .line 23
    .line 24
    iget-object p0, p0, Llf3;->a:Lts2;

    .line 25
    .line 26
    invoke-virtual {p0}, Lts2;->g()I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    goto :goto_0

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
