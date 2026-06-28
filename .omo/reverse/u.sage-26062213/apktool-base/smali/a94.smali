.class public final synthetic La94;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lne1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Lu/sage/widget/UsageWidgetConfigActivity;


# direct methods
.method public synthetic constructor <init>(Lu/sage/widget/UsageWidgetConfigActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, La94;->n:I

    .line 2
    .line 3
    iput-object p1, p0, La94;->o:Lu/sage/widget/UsageWidgetConfigActivity;

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
    .locals 2

    .line 1
    iget v0, p0, La94;->n:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    iget-object p0, p0, La94;->o:Lu/sage/widget/UsageWidgetConfigActivity;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget v0, Lu/sage/widget/UsageWidgetConfigActivity;->o:I

    .line 11
    .line 12
    invoke-virtual {p0}, Lu/sage/widget/UsageWidgetConfigActivity;->g()V

    .line 13
    .line 14
    .line 15
    return-object v1

    .line 16
    :pswitch_0
    sget v0, Lu/sage/widget/UsageWidgetConfigActivity;->o:I

    .line 17
    .line 18
    invoke-virtual {p0}, Lu/sage/widget/UsageWidgetConfigActivity;->g()V

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
