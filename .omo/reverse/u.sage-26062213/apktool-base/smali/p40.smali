.class public final synthetic Lp40;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Lph3;


# direct methods
.method public synthetic constructor <init>(Lph3;I)V
    .locals 0

    .line 1
    iput p2, p0, Lp40;->n:I

    .line 2
    .line 3
    iput-object p1, p0, Lp40;->o:Lph3;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lp40;->n:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    check-cast p1, Lza;

    .line 8
    .line 9
    iget-object v0, p1, Lza;->a:Landroid/view/autofill/AutofillValue;

    .line 10
    .line 11
    invoke-static {v0}, Ly2;->x(Landroid/view/autofill/AutofillValue;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object p1, p1, Lza;->a:Landroid/view/autofill/AutofillValue;

    .line 18
    .line 19
    invoke-static {p1}, Ly2;->z(Landroid/view/autofill/AutofillValue;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :cond_0
    if-eqz v1, :cond_2

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    sget-object p1, Lwz3;->n:Lwz3;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    sget-object p1, Lwz3;->o:Lwz3;

    .line 39
    .line 40
    :goto_0
    sget-object v0, Lnh3;->a:[Lkx1;

    .line 41
    .line 42
    sget-object v0, Llh3;->I:Loh3;

    .line 43
    .line 44
    sget-object v1, Lnh3;->a:[Lkx1;

    .line 45
    .line 46
    const/16 v2, 0x1a

    .line 47
    .line 48
    aget-object v1, v1, v2

    .line 49
    .line 50
    iget-object p0, p0, Lp40;->o:Lph3;

    .line 51
    .line 52
    invoke-interface {p0, v0, p1}, Lph3;->a(Loh3;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    const/4 p0, 0x1

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const/4 p0, 0x0

    .line 58
    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0

    .line 63
    :pswitch_0
    check-cast p1, Lb24;

    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    check-cast p1, Lys2;

    .line 69
    .line 70
    throw v1

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
