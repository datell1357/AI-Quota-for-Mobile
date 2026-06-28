.class public final Lo40;
.super Lwu1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ln40;


# instance fields
.field public final u:Lbv1;


# direct methods
.method public constructor <init>(Lbv1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Li72;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo40;->u:Lbv1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Throwable;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lwu1;->q()Lbv1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Lbv1;->x(Ljava/lang/Throwable;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final r()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final s(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lo40;->u:Lbv1;

    .line 2
    .line 3
    invoke-virtual {p0}, Lwu1;->q()Lbv1;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p1, p0}, Lbv1;->t(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method
