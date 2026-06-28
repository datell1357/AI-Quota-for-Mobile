.class public abstract Lta5;
.super Lib0;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final b:Lpb5;


# direct methods
.method public constructor <init>(Lpb5;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lpb5;->l:Lr45;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lib0;-><init>(Lr45;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lta5;->b:Lpb5;

    .line 10
    .line 11
    return-void
.end method
