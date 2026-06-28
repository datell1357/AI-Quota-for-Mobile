.class public final Laf5;
.super Llt4;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lpw3;


# direct methods
.method public constructor <init>(ILpw3;)V
    .locals 0

    .line 1
    iput p1, p0, Laf5;->c:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Laf5;->d:Lpw3;

    .line 7
    .line 8
    const-string p1, "com.google.android.gms.auth.account.data.IGetTokenWithDetailsCallback"

    .line 9
    .line 10
    invoke-direct {p0, p1}, Llt4;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iput-object p2, p0, Laf5;->d:Lpw3;

    .line 15
    .line 16
    const-string p1, "com.google.android.gms.auth.account.data.IGetAccountChangeEventsCallback"

    .line 17
    .line 18
    invoke-direct {p0, p1}, Llt4;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2

    .line 1
    iget p3, p0, Laf5;->c:I

    .line 2
    .line 3
    const/4 p4, 0x0

    .line 4
    const/4 v0, 0x1

    .line 5
    iget-object p0, p0, Laf5;->d:Lpw3;

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    packed-switch p3, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    if-ne p1, v1, :cond_0

    .line 12
    .line 13
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 14
    .line 15
    invoke-static {p2, p1}, Liv4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 20
    .line 21
    sget-object p3, Lcom/google/android/gms/auth/AccountChangeEventsResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 22
    .line 23
    invoke-static {p2, p3}, Liv4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    check-cast p3, Lcom/google/android/gms/auth/AccountChangeEventsResponse;

    .line 28
    .line 29
    invoke-static {p2}, Liv4;->b(Landroid/os/Parcel;)V

    .line 30
    .line 31
    .line 32
    invoke-static {p1, p3, p0}, Lvl4;->a(Lcom/google/android/gms/common/api/Status;Landroid/os/Parcelable;Lpw3;)V

    .line 33
    .line 34
    .line 35
    move p4, v0

    .line 36
    :cond_0
    return p4

    .line 37
    :pswitch_0
    if-ne p1, v1, :cond_1

    .line 38
    .line 39
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 40
    .line 41
    invoke-static {p2, p1}, Liv4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 46
    .line 47
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 48
    .line 49
    invoke-static {p2, p3}, Liv4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    check-cast p3, Landroid/os/Bundle;

    .line 54
    .line 55
    invoke-static {p2}, Liv4;->b(Landroid/os/Parcel;)V

    .line 56
    .line 57
    .line 58
    invoke-static {p1, p3, p0}, Lvl4;->a(Lcom/google/android/gms/common/api/Status;Landroid/os/Parcelable;Lpw3;)V

    .line 59
    .line 60
    .line 61
    move p4, v0

    .line 62
    :cond_1
    return p4

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
