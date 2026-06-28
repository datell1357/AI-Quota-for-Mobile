.class public abstract La65;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Lcom/google/android/gms/common/Feature;

.field public static final b:Lcom/google/android/gms/common/Feature;

.field public static final c:Lcom/google/android/gms/common/Feature;

.field public static final d:[Lcom/google/android/gms/common/Feature;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 2
    .line 3
    const-string v1, "commit_to_configuration_v2_api"

    .line 4
    .line 5
    const-wide/16 v2, 0x1

    .line 6
    .line 7
    const/4 v4, 0x1

    .line 8
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    .line 9
    .line 10
    .line 11
    sput-object v0, La65;->a:Lcom/google/android/gms/common/Feature;

    .line 12
    .line 13
    new-instance v1, Lcom/google/android/gms/common/Feature;

    .line 14
    .line 15
    const-string v5, "get_serving_version_api"

    .line 16
    .line 17
    invoke-direct {v1, v5, v2, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    .line 18
    .line 19
    .line 20
    move-wide v5, v2

    .line 21
    new-instance v2, Lcom/google/android/gms/common/Feature;

    .line 22
    .line 23
    const-string v3, "get_experiment_tokens_api"

    .line 24
    .line 25
    invoke-direct {v2, v3, v5, v6, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    .line 26
    .line 27
    .line 28
    new-instance v3, Lcom/google/android/gms/common/Feature;

    .line 29
    .line 30
    const-string v7, "register_flag_update_listener_api"

    .line 31
    .line 32
    const-wide/16 v8, 0x2

    .line 33
    .line 34
    invoke-direct {v3, v7, v8, v9, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    .line 35
    .line 36
    .line 37
    sput-object v3, La65;->b:Lcom/google/android/gms/common/Feature;

    .line 38
    .line 39
    move v7, v4

    .line 40
    new-instance v4, Lcom/google/android/gms/common/Feature;

    .line 41
    .line 42
    const-string v8, "sync_after_api"

    .line 43
    .line 44
    invoke-direct {v4, v8, v5, v6, v7}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    .line 45
    .line 46
    .line 47
    move-wide v8, v5

    .line 48
    new-instance v5, Lcom/google/android/gms/common/Feature;

    .line 49
    .line 50
    const-string v6, "sync_after_for_application_api"

    .line 51
    .line 52
    invoke-direct {v5, v6, v8, v9, v7}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    .line 53
    .line 54
    .line 55
    new-instance v6, Lcom/google/android/gms/common/Feature;

    .line 56
    .line 57
    const-string v10, "set_app_wide_properties_api"

    .line 58
    .line 59
    invoke-direct {v6, v10, v8, v9, v7}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    .line 60
    .line 61
    .line 62
    move v10, v7

    .line 63
    new-instance v7, Lcom/google/android/gms/common/Feature;

    .line 64
    .line 65
    const-string v11, "set_runtime_properties_api"

    .line 66
    .line 67
    invoke-direct {v7, v11, v8, v9, v10}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    .line 68
    .line 69
    .line 70
    move-wide v11, v8

    .line 71
    new-instance v8, Lcom/google/android/gms/common/Feature;

    .line 72
    .line 73
    const-string v9, "get_storage_info_api"

    .line 74
    .line 75
    invoke-direct {v8, v9, v11, v12, v10}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    .line 76
    .line 77
    .line 78
    sput-object v8, La65;->c:Lcom/google/android/gms/common/Feature;

    .line 79
    .line 80
    filled-new-array/range {v0 .. v8}, [Lcom/google/android/gms/common/Feature;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    sput-object v0, La65;->d:[Lcom/google/android/gms/common/Feature;

    .line 85
    .line 86
    return-void
.end method
