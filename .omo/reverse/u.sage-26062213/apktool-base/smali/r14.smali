.class public final Lr14;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lgv0;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ln14;


# direct methods
.method public synthetic constructor <init>(Ln14;I)V
    .locals 0

    .line 1
    iput p2, p0, Lr14;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lr14;->b:Ln14;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget v0, p0, Lr14;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lr14;->b:Ln14;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ln14;->i()V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Ln14;->a:Lib0;

    .line 12
    .line 13
    invoke-virtual {p0}, Lib0;->s()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    invoke-virtual {p0}, Ln14;->i()V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Ln14;->a:Lib0;

    .line 21
    .line 22
    invoke-virtual {p0}, Lib0;->s()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
