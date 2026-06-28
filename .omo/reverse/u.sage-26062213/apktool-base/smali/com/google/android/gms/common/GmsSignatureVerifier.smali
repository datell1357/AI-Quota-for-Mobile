.class public Lcom/google/android/gms/common/GmsSignatureVerifier;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field private static final zza:Lcom/google/android/gms/common/zzab;

.field private static final zzb:Lcom/google/android/gms/common/zzab;

.field private static final zzc:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/google/android/gms/common/zzaa;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/common/zzaa;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "com.google.android.gms"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/zzaa;->zza(Ljava/lang/String;)Lcom/google/android/gms/common/zzaa;

    .line 9
    .line 10
    .line 11
    const-wide/32 v1, 0xc2bd840

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/zzaa;->zzb(J)Lcom/google/android/gms/common/zzaa;

    .line 15
    .line 16
    .line 17
    sget-object v1, Lcom/google/android/gms/common/zzo;->zzf:Lcom/google/android/gms/common/zzm;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/common/zzm;->zzc()[B

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    sget-object v3, Lcom/google/android/gms/common/zzo;->zzd:Lcom/google/android/gms/common/zzm;

    .line 24
    .line 25
    invoke-virtual {v3}, Lcom/google/android/gms/common/zzm;->zzc()[B

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    sget-object v4, Lcom/google/android/gms/common/zzo;->zzb:Lcom/google/android/gms/common/zzm;

    .line 30
    .line 31
    invoke-virtual {v4}, Lcom/google/android/gms/common/zzm;->zzc()[B

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    sget-object v5, Ldq4;->o:Lun4;

    .line 36
    .line 37
    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const/4 v3, 0x3

    .line 42
    invoke-static {v3, v2}, Lyq4;->b(I[Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v3, v2}, Ldq4;->l(I[Ljava/lang/Object;)Lsr4;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/zzaa;->zzc(Ljava/util/List;)Lcom/google/android/gms/common/zzaa;

    .line 50
    .line 51
    .line 52
    sget-object v2, Lcom/google/android/gms/common/zzo;->zze:Lcom/google/android/gms/common/zzm;

    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/google/android/gms/common/zzm;->zzc()[B

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    sget-object v5, Lcom/google/android/gms/common/zzo;->zzc:Lcom/google/android/gms/common/zzm;

    .line 59
    .line 60
    invoke-virtual {v5}, Lcom/google/android/gms/common/zzm;->zzc()[B

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    sget-object v7, Lcom/google/android/gms/common/zzo;->zza:Lcom/google/android/gms/common/zzm;

    .line 65
    .line 66
    invoke-virtual {v7}, Lcom/google/android/gms/common/zzm;->zzc()[B

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    filled-new-array {v4, v6, v7}, [Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-static {v3, v4}, Lyq4;->b(I[Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-static {v3, v4}, Ldq4;->l(I[Ljava/lang/Object;)Lsr4;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/zzaa;->zzd(Ljava/util/List;)Lcom/google/android/gms/common/zzaa;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/google/android/gms/common/zzaa;->zze()Lcom/google/android/gms/common/zzab;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    sput-object v0, Lcom/google/android/gms/common/GmsSignatureVerifier;->zza:Lcom/google/android/gms/common/zzab;

    .line 89
    .line 90
    new-instance v0, Lcom/google/android/gms/common/zzaa;

    .line 91
    .line 92
    invoke-direct {v0}, Lcom/google/android/gms/common/zzaa;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v3, "com.android.vending"

    .line 96
    .line 97
    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/zzaa;->zza(Ljava/lang/String;)Lcom/google/android/gms/common/zzaa;

    .line 98
    .line 99
    .line 100
    const-wide/32 v3, 0x4e6e200

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/common/zzaa;->zzb(J)Lcom/google/android/gms/common/zzaa;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Lcom/google/android/gms/common/zzm;->zzc()[B

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    const/4 v3, 0x1

    .line 115
    invoke-static {v3, v1}, Lyq4;->b(I[Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    invoke-static {v3, v1}, Ldq4;->l(I[Ljava/lang/Object;)Lsr4;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/zzaa;->zzc(Ljava/util/List;)Lcom/google/android/gms/common/zzaa;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2}, Lcom/google/android/gms/common/zzm;->zzc()[B

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v5}, Lcom/google/android/gms/common/zzm;->zzc()[B

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    const/4 v2, 0x2

    .line 138
    invoke-static {v2, v1}, Lyq4;->b(I[Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    invoke-static {v2, v1}, Ldq4;->l(I[Ljava/lang/Object;)Lsr4;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/zzaa;->zzd(Ljava/util/List;)Lcom/google/android/gms/common/zzaa;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Lcom/google/android/gms/common/zzaa;->zze()Lcom/google/android/gms/common/zzab;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    sput-object v0, Lcom/google/android/gms/common/GmsSignatureVerifier;->zzb:Lcom/google/android/gms/common/zzab;

    .line 153
    .line 154
    new-instance v0, Ljava/util/HashMap;

    .line 155
    .line 156
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 157
    .line 158
    .line 159
    sput-object v0, Lcom/google/android/gms/common/GmsSignatureVerifier;->zzc:Ljava/util/HashMap;

    .line 160
    .line 161
    return-void
.end method
