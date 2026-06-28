.class public final Lfq4;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lfq4;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Lvb5;

.field public q:J

.field public r:Z

.field public s:Ljava/lang/String;

.field public final t:Lbu4;

.field public u:J

.field public v:Lbu4;

.field public final w:J

.field public final x:Lbu4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ld6;

    .line 2
    .line 3
    const/16 v1, 0x12

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ld6;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lfq4;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Lfq4;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object v0, p1, Lfq4;->n:Ljava/lang/String;

    .line 8
    .line 9
    iput-object v0, p0, Lfq4;->n:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v0, p1, Lfq4;->o:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v0, p0, Lfq4;->o:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v0, p1, Lfq4;->p:Lvb5;

    .line 16
    .line 17
    iput-object v0, p0, Lfq4;->p:Lvb5;

    .line 18
    .line 19
    iget-wide v0, p1, Lfq4;->q:J

    .line 20
    .line 21
    iput-wide v0, p0, Lfq4;->q:J

    .line 22
    .line 23
    iget-boolean v0, p1, Lfq4;->r:Z

    .line 24
    .line 25
    iput-boolean v0, p0, Lfq4;->r:Z

    .line 26
    .line 27
    iget-object v0, p1, Lfq4;->s:Ljava/lang/String;

    .line 28
    .line 29
    iput-object v0, p0, Lfq4;->s:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v0, p1, Lfq4;->t:Lbu4;

    .line 32
    .line 33
    iput-object v0, p0, Lfq4;->t:Lbu4;

    .line 34
    .line 35
    iget-wide v0, p1, Lfq4;->u:J

    .line 36
    .line 37
    iput-wide v0, p0, Lfq4;->u:J

    .line 38
    .line 39
    iget-object v0, p1, Lfq4;->v:Lbu4;

    .line 40
    .line 41
    iput-object v0, p0, Lfq4;->v:Lbu4;

    .line 42
    .line 43
    iget-wide v0, p1, Lfq4;->w:J

    .line 44
    .line 45
    iput-wide v0, p0, Lfq4;->w:J

    .line 46
    .line 47
    iget-object p1, p1, Lfq4;->x:Lbu4;

    .line 48
    .line 49
    iput-object p1, p0, Lfq4;->x:Lbu4;

    .line 50
    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lvb5;JZLjava/lang/String;Lbu4;JLbu4;JLbu4;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lfq4;->n:Ljava/lang/String;

    iput-object p2, p0, Lfq4;->o:Ljava/lang/String;

    iput-object p3, p0, Lfq4;->p:Lvb5;

    iput-wide p4, p0, Lfq4;->q:J

    iput-boolean p6, p0, Lfq4;->r:Z

    iput-object p7, p0, Lfq4;->s:Ljava/lang/String;

    iput-object p8, p0, Lfq4;->t:Lbu4;

    iput-wide p9, p0, Lfq4;->u:J

    iput-object p11, p0, Lfq4;->v:Lbu4;

    iput-wide p12, p0, Lfq4;->w:J

    iput-object p14, p0, Lfq4;->x:Lbu4;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lfq4;->n:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x3

    .line 13
    iget-object v2, p0, Lfq4;->o:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x4

    .line 19
    iget-object v2, p0, Lfq4;->p:Lvb5;

    .line 20
    .line 21
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x5

    .line 25
    iget-wide v4, p0, Lfq4;->q:J

    .line 26
    .line 27
    invoke-static {p1, v1, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x6

    .line 31
    iget-boolean v2, p0, Lfq4;->r:Z

    .line 32
    .line 33
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x7

    .line 37
    iget-object v2, p0, Lfq4;->s:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 40
    .line 41
    .line 42
    const/16 v1, 0x8

    .line 43
    .line 44
    iget-object v2, p0, Lfq4;->t:Lbu4;

    .line 45
    .line 46
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 47
    .line 48
    .line 49
    const/16 v1, 0x9

    .line 50
    .line 51
    iget-wide v4, p0, Lfq4;->u:J

    .line 52
    .line 53
    invoke-static {p1, v1, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 54
    .line 55
    .line 56
    const/16 v1, 0xa

    .line 57
    .line 58
    iget-object v2, p0, Lfq4;->v:Lbu4;

    .line 59
    .line 60
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 61
    .line 62
    .line 63
    const/16 v1, 0xb

    .line 64
    .line 65
    iget-wide v4, p0, Lfq4;->w:J

    .line 66
    .line 67
    invoke-static {p1, v1, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 68
    .line 69
    .line 70
    const/16 v1, 0xc

    .line 71
    .line 72
    iget-object p0, p0, Lfq4;->x:Lbu4;

    .line 73
    .line 74
    invoke-static {p1, v1, p0, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 75
    .line 76
    .line 77
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 78
    .line 79
    .line 80
    return-void
.end method
