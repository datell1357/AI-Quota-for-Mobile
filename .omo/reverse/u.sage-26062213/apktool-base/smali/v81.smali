.class public final Lv81;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lb81;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Lw33;


# direct methods
.method public synthetic constructor <init>(ILw33;)V
    .locals 0

    .line 1
    iput p1, p0, Lv81;->n:I

    .line 2
    .line 3
    iput-object p2, p0, Lv81;->o:Lw33;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final m(Ljava/lang/Object;Ldh0;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget p2, p0, Lv81;->n:I

    .line 2
    .line 3
    iget-object v0, p0, Lv81;->o:Lw33;

    .line 4
    .line 5
    packed-switch p2, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lw33;->n:Ljava/lang/Object;

    .line 9
    .line 10
    new-instance p1, Ld;

    .line 11
    .line 12
    invoke-direct {p1, p0}, Ld;-><init>(Lb81;)V

    .line 13
    .line 14
    .line 15
    throw p1

    .line 16
    :pswitch_0
    iput-object p1, v0, Lw33;->n:Ljava/lang/Object;

    .line 17
    .line 18
    new-instance p1, Ld;

    .line 19
    .line 20
    invoke-direct {p1, p0}, Ld;-><init>(Lb81;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
