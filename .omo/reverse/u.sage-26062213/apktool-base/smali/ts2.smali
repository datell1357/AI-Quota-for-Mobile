.class public final Lts2;
.super Lcs3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lap3;
.implements Ltr3;
.implements Lpg2;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lts2;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public o:Lyo3;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ld6;

    .line 2
    .line 3
    const/16 v1, 0xb

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ld6;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lts2;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcs3;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lwo3;->j()Lpo3;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Lyo3;

    .line 9
    .line 10
    invoke-virtual {v0}, Lpo3;->g()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    invoke-direct {v1, v2, v3, p1}, Lyo3;-><init>(JI)V

    .line 15
    .line 16
    .line 17
    instance-of v0, v0, Ljh1;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    new-instance v0, Lyo3;

    .line 22
    .line 23
    const-wide/16 v2, 0x1

    .line 24
    .line 25
    invoke-direct {v0, v2, v3, p1}, Lyo3;-><init>(JI)V

    .line 26
    .line 27
    .line 28
    iput-object v0, v1, Lds3;->b:Lds3;

    .line 29
    .line 30
    :cond_0
    iput-object v1, p0, Lts2;->o:Lyo3;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final a()Lds3;
    .locals 0

    .line 1
    iget-object p0, p0, Lts2;->o:Lyo3;

    .line 2
    .line 3
    return-object p0
.end method

.method public final b()Lw13;
    .locals 0

    .line 1
    sget-object p0, Lw13;->S:Lw13;

    .line 2
    .line 3
    return-object p0
.end method

.method public final d(Lds3;Lds3;Lds3;)Lds3;
    .locals 0

    .line 1
    move-object p0, p2

    .line 2
    check-cast p0, Lyo3;

    .line 3
    .line 4
    check-cast p3, Lyo3;

    .line 5
    .line 6
    iget p0, p0, Lyo3;->c:I

    .line 7
    .line 8
    iget p1, p3, Lyo3;->c:I

    .line 9
    .line 10
    if-ne p0, p1, :cond_0

    .line 11
    .line 12
    return-object p2

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return-object p0
.end method

.method public final describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final e(Lds3;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    check-cast p1, Lyo3;

    .line 5
    .line 6
    iput-object p1, p0, Lts2;->o:Lyo3;

    .line 7
    .line 8
    return-void
.end method

.method public final g()I
    .locals 1

    .line 1
    iget-object v0, p0, Lts2;->o:Lyo3;

    .line 2
    .line 3
    invoke-static {v0, p0}, Lwo3;->t(Lds3;Lbs3;)Lds3;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lyo3;

    .line 8
    .line 9
    iget p0, p0, Lyo3;->c:I

    .line 10
    .line 11
    return p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lts2;->g()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final h(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lts2;->o:Lyo3;

    .line 2
    .line 3
    invoke-static {v0}, Lwo3;->h(Lds3;)Lds3;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lyo3;

    .line 8
    .line 9
    iget v1, v0, Lyo3;->c:I

    .line 10
    .line 11
    if-eq v1, p1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lts2;->o:Lyo3;

    .line 14
    .line 15
    sget-object v2, Lwo3;->c:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v2

    .line 18
    :try_start_0
    invoke-static {}, Lwo3;->j()Lpo3;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-static {v1, p0, v3, v0}, Lwo3;->o(Lds3;Lcs3;Lpo3;Lds3;)Lds3;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lyo3;

    .line 27
    .line 28
    iput p1, v0, Lyo3;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    monitor-exit v2

    .line 31
    invoke-static {v3, p0}, Lwo3;->n(Lpo3;Lbs3;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    monitor-exit v2

    .line 37
    throw p0

    .line 38
    :cond_0
    return-void
.end method

.method public final setValue(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p0, p1}, Lts2;->h(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lts2;->o:Lyo3;

    .line 2
    .line 3
    invoke-static {v0}, Lwo3;->h(Lds3;)Lds3;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lyo3;

    .line 8
    .line 9
    iget v0, v0, Lyo3;->c:I

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    const-string v1, "MutableIntState(value="

    .line 16
    .line 17
    const-string v2, ")@"

    .line 18
    .line 19
    invoke-static {v0, p0, v1, v2}, Ldi0;->p(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lts2;->g()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
