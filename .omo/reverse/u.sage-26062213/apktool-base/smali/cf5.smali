.class public final Lcf5;
.super Lmt4;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lpw3;


# direct methods
.method public constructor <init>(ILpw3;)V
    .locals 0

    .line 1
    iput p1, p0, Lcf5;->c:I

    .line 2
    .line 3
    iput-object p2, p0, Lcf5;->d:Lpw3;

    .line 4
    .line 5
    const-string p1, "com.google.android.gms.auth.blockstore.internal.IRetrieveBytesCallback"

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lmt4;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2

    .line 1
    iget-object p3, p0, Lcf5;->d:Lpw3;

    .line 2
    .line 3
    iget p4, p0, Lcf5;->c:I

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-eq p1, v0, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq p1, v1, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return p0

    .line 13
    :cond_0
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 14
    .line 15
    invoke-static {p2, p1}, Lkv4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 20
    .line 21
    sget-object v1, Lcom/google/android/gms/auth/blockstore/RetrieveBytesResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 22
    .line 23
    invoke-static {p2, v1}, Lkv4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/google/android/gms/auth/blockstore/RetrieveBytesResponse;

    .line 28
    .line 29
    invoke-virtual {p0, p2}, Lmt4;->enforceNoDataAvail(Landroid/os/Parcel;)V

    .line 30
    .line 31
    .line 32
    packed-switch p4, :pswitch_data_0

    .line 33
    .line 34
    .line 35
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 36
    .line 37
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 38
    .line 39
    .line 40
    throw p0

    .line 41
    :pswitch_0
    invoke-static {p1, v1, p3}, Lcom/google/android/gms/common/api/internal/TaskUtil;->setResultOrApiException(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lpw3;)V

    .line 42
    .line 43
    .line 44
    return v0

    .line 45
    :cond_1
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 46
    .line 47
    invoke-static {p2, p1}, Lkv4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 52
    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {p0, p2}, Lmt4;->enforceNoDataAvail(Landroid/os/Parcel;)V

    .line 58
    .line 59
    .line 60
    packed-switch p4, :pswitch_data_1

    .line 61
    .line 62
    .line 63
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 64
    .line 65
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 66
    .line 67
    .line 68
    throw p0

    .line 69
    :pswitch_1
    invoke-static {p1, v1, p3}, Lcom/google/android/gms/common/api/internal/TaskUtil;->setResultOrApiException(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lpw3;)V

    .line 70
    .line 71
    .line 72
    return v0

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method
