.class public final Lzx4;
.super Liu4;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lqw4;


# instance fields
.field public final synthetic c:Lw85;


# direct methods
.method public constructor <init>(Ltx4;Lw85;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lzx4;->c:Lw85;

    .line 2
    .line 3
    const-string p1, "com.google.android.gms.measurement.api.internal.IDynamiteUploadBatchesCallback"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Liu4;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final E(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 0

    .line 1
    const/4 p2, 0x2

    .line 2
    if-ne p1, p2, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, Lzx4;->zze()V

    .line 5
    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public final zze()V
    .locals 0

    .line 1
    iget-object p0, p0, Lzx4;->c:Lw85;

    .line 2
    .line 3
    invoke-virtual {p0}, Lw85;->run()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
