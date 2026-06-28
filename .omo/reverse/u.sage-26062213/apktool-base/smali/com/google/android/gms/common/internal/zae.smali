.class final Lcom/google/android/gms/common/internal/zae;
.super Lcom/google/android/gms/common/internal/zag;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field final synthetic zaa:Landroid/content/Intent;

.field final synthetic zab:Llc1;

.field final synthetic zac:I


# direct methods
.method public constructor <init>(Landroid/content/Intent;Llc1;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/internal/zae;->zaa:Landroid/content/Intent;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/android/gms/common/internal/zae;->zab:Llc1;

    .line 4
    .line 5
    iput p3, p0, Lcom/google/android/gms/common/internal/zae;->zac:I

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zag;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final zaa()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zae;->zaa:Landroid/content/Intent;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zae;->zab:Llc1;

    .line 6
    .line 7
    iget p0, p0, Lcom/google/android/gms/common/internal/zae;->zac:I

    .line 8
    .line 9
    invoke-virtual {v1, v0, p0}, Llc1;->startActivityForResult(Landroid/content/Intent;I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
