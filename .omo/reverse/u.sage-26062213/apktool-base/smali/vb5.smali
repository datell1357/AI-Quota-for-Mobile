.class public final Lvb5;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lvb5;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final n:I

.field public final o:Ljava/lang/String;

.field public final p:J

.field public final q:Ljava/lang/Long;

.field public final r:Ljava/lang/String;

.field public final s:Ljava/lang/String;

.field public final t:Ljava/lang/Double;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lav4;

    .line 2
    .line 3
    const/16 v1, 0x16

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lav4;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lvb5;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;JLjava/lang/Long;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lvb5;->n:I

    iput-object p2, p0, Lvb5;->o:Ljava/lang/String;

    iput-wide p3, p0, Lvb5;->p:J

    iput-object p5, p0, Lvb5;->q:Ljava/lang/Long;

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    if-eqz p6, :cond_0

    .line 73
    invoke-virtual {p6}, Ljava/lang/Float;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p9

    goto :goto_0

    :cond_0
    const/4 p9, 0x0

    :cond_1
    :goto_0
    iput-object p9, p0, Lvb5;->t:Ljava/lang/Double;

    iput-object p7, p0, Lvb5;->r:Ljava/lang/String;

    iput-object p8, p0, Lvb5;->s:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    iput v0, p0, Lvb5;->n:I

    .line 9
    .line 10
    iput-object p4, p0, Lvb5;->o:Ljava/lang/String;

    .line 11
    .line 12
    iput-wide p1, p0, Lvb5;->p:J

    .line 13
    .line 14
    iput-object p5, p0, Lvb5;->s:Ljava/lang/String;

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    if-nez p3, :cond_0

    .line 18
    .line 19
    iput-object p1, p0, Lvb5;->q:Ljava/lang/Long;

    .line 20
    .line 21
    iput-object p1, p0, Lvb5;->t:Ljava/lang/Double;

    .line 22
    .line 23
    iput-object p1, p0, Lvb5;->r:Ljava/lang/String;

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    instance-of p2, p3, Ljava/lang/Long;

    .line 27
    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    check-cast p3, Ljava/lang/Long;

    .line 31
    .line 32
    iput-object p3, p0, Lvb5;->q:Ljava/lang/Long;

    .line 33
    .line 34
    iput-object p1, p0, Lvb5;->t:Ljava/lang/Double;

    .line 35
    .line 36
    iput-object p1, p0, Lvb5;->r:Ljava/lang/String;

    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    instance-of p2, p3, Ljava/lang/String;

    .line 40
    .line 41
    if-eqz p2, :cond_2

    .line 42
    .line 43
    iput-object p1, p0, Lvb5;->q:Ljava/lang/Long;

    .line 44
    .line 45
    iput-object p1, p0, Lvb5;->t:Ljava/lang/Double;

    .line 46
    .line 47
    check-cast p3, Ljava/lang/String;

    .line 48
    .line 49
    iput-object p3, p0, Lvb5;->r:Ljava/lang/String;

    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    instance-of p2, p3, Ljava/lang/Double;

    .line 53
    .line 54
    if-eqz p2, :cond_3

    .line 55
    .line 56
    iput-object p1, p0, Lvb5;->q:Ljava/lang/Long;

    .line 57
    .line 58
    check-cast p3, Ljava/lang/Double;

    .line 59
    .line 60
    iput-object p3, p0, Lvb5;->t:Ljava/lang/Double;

    .line 61
    .line 62
    iput-object p1, p0, Lvb5;->r:Ljava/lang/String;

    .line 63
    .line 64
    return-void

    .line 65
    :cond_3
    const-string p0, "User attribute given of un-supported type"

    .line 66
    .line 67
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p1
.end method

.method public constructor <init>(Lxb5;)V
    .locals 6

    .line 71
    iget-object v4, p1, Lxb5;->c:Ljava/lang/String;

    iget-wide v1, p1, Lxb5;->d:J

    iget-object v3, p1, Lxb5;->e:Ljava/lang/Object;

    iget-object v5, p1, Lxb5;->b:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lvb5;-><init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final Y()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lvb5;->q:Ljava/lang/Long;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lvb5;->t:Ljava/lang/Double;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_1
    iget-object p0, p0, Lvb5;->r:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz p0, :cond_2

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_2
    const/4 p0, 0x0

    .line 17
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lav4;->a(Lvb5;Landroid/os/Parcel;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
