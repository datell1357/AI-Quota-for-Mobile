.class public final Lwc2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lj41;


# instance fields
.field public final synthetic a:I

.field public final b:Lm03;

.field public final c:Lm03;


# direct methods
.method public synthetic constructor <init>(Lm03;Lm03;I)V
    .locals 0

    .line 1
    iput p3, p0, Lwc2;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lwc2;->b:Lm03;

    .line 4
    .line 5
    iput-object p2, p0, Lwc2;->c:Lm03;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lwc2;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lwc2;->b:Lm03;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v3, Lpr3;

    .line 9
    .line 10
    const/16 v0, 0xc

    .line 11
    .line 12
    invoke-direct {v3, v0}, Lpr3;-><init>(I)V

    .line 13
    .line 14
    .line 15
    new-instance v4, Lpr3;

    .line 16
    .line 17
    const/16 v0, 0x9

    .line 18
    .line 19
    invoke-direct {v4, v0}, Lpr3;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v1}, Lm03;->get()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v2, Lob3;

    .line 27
    .line 28
    move-object v6, v0

    .line 29
    check-cast v6, Lde3;

    .line 30
    .line 31
    sget-object v5, Leo;->f:Leo;

    .line 32
    .line 33
    iget-object v7, p0, Lwc2;->c:Lm03;

    .line 34
    .line 35
    invoke-direct/range {v2 .. v7}, Lob3;-><init>(Lpr3;Lpr3;Leo;Lde3;Lm03;)V

    .line 36
    .line 37
    .line 38
    return-object v2

    .line 39
    :pswitch_0
    check-cast v1, Lsk0;

    .line 40
    .line 41
    iget-object v0, v1, Lsk0;->b:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v0, Landroid/content/Context;

    .line 44
    .line 45
    iget-object p0, p0, Lwc2;->c:Lm03;

    .line 46
    .line 47
    check-cast p0, Lsk0;

    .line 48
    .line 49
    invoke-virtual {p0}, Lsk0;->get()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    new-instance v1, Lvc2;

    .line 54
    .line 55
    check-cast p0, Leh;

    .line 56
    .line 57
    invoke-direct {v1, v0, p0}, Lvc2;-><init>(Landroid/content/Context;Leh;)V

    .line 58
    .line 59
    .line 60
    return-object v1

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
