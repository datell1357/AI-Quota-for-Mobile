.class public final synthetic Loc1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lap2;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lu90;


# direct methods
.method public synthetic constructor <init>(Lu90;I)V
    .locals 0

    .line 1
    iput p2, p0, Loc1;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Loc1;->b:Lu90;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lu90;)V
    .locals 1

    .line 1
    iget v0, p0, Loc1;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Loc1;->b:Lu90;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-static {p0, p1}, Lu90;->f(Lu90;Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    check-cast p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    .line 13
    .line 14
    iget-object p0, p0, Lqc1;->mFragments:Luc1;

    .line 15
    .line 16
    iget-object p0, p0, Luc1;->a:Lpc1;

    .line 17
    .line 18
    iget-object p1, p0, Lvc1;->q:Lid1;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p1, p0, p0, v0}, Lhd1;->b(Lvc1;Lsc1;Llc1;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
