.class public final synthetic Lkd;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final synthetic a:Lcl0;

.field public final synthetic b:Lld;

.field public final synthetic c:F

.field public final synthetic d:F


# direct methods
.method public synthetic constructor <init>(Lcl0;Lld;FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkd;->a:Lcl0;

    .line 5
    .line 6
    iput-object p2, p0, Lkd;->b:Lld;

    .line 7
    .line 8
    iput p3, p0, Lkd;->c:F

    .line 9
    .line 10
    iput p4, p0, Lkd;->d:F

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(F)F
    .locals 4

    .line 1
    iget-object v0, p0, Lkd;->a:Lcl0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lkd;->b:Lld;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcl0;->c(F)J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    invoke-static {v2, v3}, Lix;->x(J)F

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iget v0, v1, Lld;->a:F

    .line 20
    .line 21
    sub-float/2addr p1, v0

    .line 22
    invoke-static {v2, v3}, Lix;->y(J)F

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget v1, v1, Lld;->b:F

    .line 27
    .line 28
    sub-float/2addr v0, v1

    .line 29
    invoke-static {p1, v0}, Lk94;->a(FF)F

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iget v0, p0, Lkd;->c:F

    .line 34
    .line 35
    sub-float/2addr p1, v0

    .line 36
    sget v0, Lk94;->c:F

    .line 37
    .line 38
    invoke-static {p1, v0}, Lk94;->d(FF)F

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    iget p0, p0, Lkd;->d:F

    .line 43
    .line 44
    sub-float/2addr p1, p0

    .line 45
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    return p0
.end method
