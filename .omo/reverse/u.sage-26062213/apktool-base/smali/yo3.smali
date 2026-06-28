.class public final Lyo3;
.super Lds3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public c:I


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lds3;-><init>(J)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lyo3;->c:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lds3;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    check-cast p1, Lyo3;

    .line 5
    .line 6
    iget p1, p1, Lyo3;->c:I

    .line 7
    .line 8
    iput p1, p0, Lyo3;->c:I

    .line 9
    .line 10
    return-void
.end method

.method public final b(J)Lds3;
    .locals 1

    .line 1
    new-instance v0, Lyo3;

    .line 2
    .line 3
    iget p0, p0, Lyo3;->c:I

    .line 4
    .line 5
    invoke-direct {v0, p1, p2, p0}, Lyo3;-><init>(JI)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
