.class public final Lzk4;
.super Llt4;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lpw3;


# direct methods
.method public constructor <init>(ILpw3;)V
    .locals 0

    .line 1
    iput p1, p0, Lzk4;->c:I

    .line 2
    .line 3
    iput-object p2, p0, Lzk4;->d:Lpw3;

    .line 4
    .line 5
    const-string p1, "com.google.android.gms.auth.account.data.IBundleCallback"

    .line 6
    .line 7
    invoke-direct {p0, p1}, Llt4;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    .line 1
    const/4 p3, 0x2

    .line 2
    if-ne p1, p3, :cond_0

    .line 3
    .line 4
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5
    .line 6
    invoke-static {p2, p1}, Liv4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 11
    .line 12
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 13
    .line 14
    invoke-static {p2, p3}, Liv4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    check-cast p3, Landroid/os/Bundle;

    .line 19
    .line 20
    invoke-static {p2}, Liv4;->b(Landroid/os/Parcel;)V

    .line 21
    .line 22
    .line 23
    iget p2, p0, Lzk4;->c:I

    .line 24
    .line 25
    iget-object p0, p0, Lzk4;->d:Lpw3;

    .line 26
    .line 27
    packed-switch p2, :pswitch_data_0

    .line 28
    .line 29
    .line 30
    invoke-static {p1, p3, p0}, Lvl4;->a(Lcom/google/android/gms/common/api/Status;Landroid/os/Parcelable;Lpw3;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :pswitch_0
    invoke-static {p1, p3, p0}, Lvl4;->a(Lcom/google/android/gms/common/api/Status;Landroid/os/Parcelable;Lpw3;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    const/4 p0, 0x1

    .line 38
    return p0

    .line 39
    :cond_0
    const/4 p0, 0x0

    .line 40
    return p0

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
