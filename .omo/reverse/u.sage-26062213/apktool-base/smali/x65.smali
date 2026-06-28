.class public abstract Lx65;
.super Liu4;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# virtual methods
.method public final E(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 0

    .line 1
    const/4 p3, 0x2

    .line 2
    if-ne p1, p3, :cond_0

    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 9
    .line 10
    .line 11
    check-cast p0, Ls65;

    .line 12
    .line 13
    new-instance p2, Lo65;

    .line 14
    .line 15
    invoke-direct {p2, p0, p1}, Lo65;-><init>(Ls65;[B)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Ls65;->c:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    .line 19
    .line 20
    invoke-virtual {p0, p2}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->notifyListener(Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    return p0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    return p0
.end method
