.class final enum Lcom/google/android/gms/auth/zzn;
.super Ljava/lang/Enum;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final enum zza:Lcom/google/android/gms/auth/zzn;

.field public static final enum zzb:Lcom/google/android/gms/auth/zzn;

.field public static final enum zzc:Lcom/google/android/gms/auth/zzn;

.field private static final synthetic zzd:[Lcom/google/android/gms/auth/zzn;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/auth/zzn;

    .line 2
    .line 3
    const-string v1, "LEGACY"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/auth/zzn;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/android/gms/auth/zzn;->zza:Lcom/google/android/gms/auth/zzn;

    .line 10
    .line 11
    new-instance v1, Lcom/google/android/gms/auth/zzn;

    .line 12
    .line 13
    const-string v2, "AUTH_INSTANTIATION"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/auth/zzn;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/google/android/gms/auth/zzn;->zzb:Lcom/google/android/gms/auth/zzn;

    .line 20
    .line 21
    new-instance v2, Lcom/google/android/gms/auth/zzn;

    .line 22
    .line 23
    const-string v3, "CALLER_INSTANTIATION"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/auth/zzn;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lcom/google/android/gms/auth/zzn;->zzc:Lcom/google/android/gms/auth/zzn;

    .line 30
    .line 31
    filled-new-array {v0, v1, v2}, [Lcom/google/android/gms/auth/zzn;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/google/android/gms/auth/zzn;->zzd:[Lcom/google/android/gms/auth/zzn;

    .line 36
    .line 37
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static values()[Lcom/google/android/gms/auth/zzn;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/auth/zzn;->zzd:[Lcom/google/android/gms/auth/zzn;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/android/gms/auth/zzn;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/android/gms/auth/zzn;

    .line 8
    .line 9
    return-object v0
.end method
