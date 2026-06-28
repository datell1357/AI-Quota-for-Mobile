.class public abstract Ltl4;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Lcom/google/android/gms/common/Feature;

.field public static final b:Lcom/google/android/gms/common/Feature;

.field public static final c:Lcom/google/android/gms/common/Feature;

.field public static final d:Lcom/google/android/gms/common/Feature;

.field public static final e:Lcom/google/android/gms/common/Feature;

.field public static final f:Lcom/google/android/gms/common/Feature;

.field public static final g:Lcom/google/android/gms/common/Feature;

.field public static final h:Lcom/google/android/gms/common/Feature;

.field public static final i:Lcom/google/android/gms/common/Feature;

.field public static final j:[Lcom/google/android/gms/common/Feature;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 2
    .line 3
    const-string v1, "auth_blockstore"

    .line 4
    .line 5
    const-wide/16 v2, 0x3

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Ltl4;->a:Lcom/google/android/gms/common/Feature;

    .line 11
    .line 12
    new-instance v1, Lcom/google/android/gms/common/Feature;

    .line 13
    .line 14
    const-string v4, "blockstore_data_transfer"

    .line 15
    .line 16
    const-wide/16 v5, 0x1

    .line 17
    .line 18
    invoke-direct {v1, v4, v5, v6}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 19
    .line 20
    .line 21
    move-wide v3, v2

    .line 22
    new-instance v2, Lcom/google/android/gms/common/Feature;

    .line 23
    .line 24
    const-string v7, "blockstore_notify_app_restore"

    .line 25
    .line 26
    invoke-direct {v2, v7, v5, v6}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 27
    .line 28
    .line 29
    move-wide v7, v3

    .line 30
    new-instance v3, Lcom/google/android/gms/common/Feature;

    .line 31
    .line 32
    const-string v4, "blockstore_store_bytes_with_options"

    .line 33
    .line 34
    const-wide/16 v9, 0x2

    .line 35
    .line 36
    invoke-direct {v3, v4, v9, v10}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 37
    .line 38
    .line 39
    sput-object v3, Ltl4;->b:Lcom/google/android/gms/common/Feature;

    .line 40
    .line 41
    new-instance v4, Lcom/google/android/gms/common/Feature;

    .line 42
    .line 43
    const-string v11, "blockstore_is_end_to_end_encryption_available"

    .line 44
    .line 45
    invoke-direct {v4, v11, v5, v6}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 46
    .line 47
    .line 48
    sput-object v4, Ltl4;->c:Lcom/google/android/gms/common/Feature;

    .line 49
    .line 50
    move-wide v11, v5

    .line 51
    new-instance v5, Lcom/google/android/gms/common/Feature;

    .line 52
    .line 53
    const-string v6, "blockstore_enable_cloud_backup"

    .line 54
    .line 55
    invoke-direct {v5, v6, v11, v12}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 56
    .line 57
    .line 58
    sput-object v5, Ltl4;->d:Lcom/google/android/gms/common/Feature;

    .line 59
    .line 60
    new-instance v6, Lcom/google/android/gms/common/Feature;

    .line 61
    .line 62
    const-string v13, "blockstore_delete_bytes"

    .line 63
    .line 64
    invoke-direct {v6, v13, v9, v10}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 65
    .line 66
    .line 67
    sput-object v6, Ltl4;->e:Lcom/google/android/gms/common/Feature;

    .line 68
    .line 69
    move-wide v8, v7

    .line 70
    new-instance v7, Lcom/google/android/gms/common/Feature;

    .line 71
    .line 72
    const-string v10, "blockstore_retrieve_bytes_with_options"

    .line 73
    .line 74
    invoke-direct {v7, v10, v8, v9}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 75
    .line 76
    .line 77
    sput-object v7, Ltl4;->f:Lcom/google/android/gms/common/Feature;

    .line 78
    .line 79
    new-instance v8, Lcom/google/android/gms/common/Feature;

    .line 80
    .line 81
    const-string v9, "auth_clear_restore_credential"

    .line 82
    .line 83
    invoke-direct {v8, v9, v11, v12}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 84
    .line 85
    .line 86
    sput-object v8, Ltl4;->g:Lcom/google/android/gms/common/Feature;

    .line 87
    .line 88
    new-instance v9, Lcom/google/android/gms/common/Feature;

    .line 89
    .line 90
    const-string v10, "auth_create_restore_credential"

    .line 91
    .line 92
    invoke-direct {v9, v10, v11, v12}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 93
    .line 94
    .line 95
    sput-object v9, Ltl4;->h:Lcom/google/android/gms/common/Feature;

    .line 96
    .line 97
    new-instance v10, Lcom/google/android/gms/common/Feature;

    .line 98
    .line 99
    const-string v13, "auth_get_restore_credential"

    .line 100
    .line 101
    invoke-direct {v10, v13, v11, v12}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 102
    .line 103
    .line 104
    sput-object v10, Ltl4;->i:Lcom/google/android/gms/common/Feature;

    .line 105
    .line 106
    filled-new-array/range {v0 .. v10}, [Lcom/google/android/gms/common/Feature;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    sput-object v0, Ltl4;->j:[Lcom/google/android/gms/common/Feature;

    .line 111
    .line 112
    return-void
.end method
