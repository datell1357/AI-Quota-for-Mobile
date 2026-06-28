.class public final Loq1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lve;


# instance fields
.field public final a:Ldy0;

.field public final b:Ld63;


# direct methods
.method public constructor <init>(Ldy0;Ld63;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Loq1;->a:Ldy0;

    .line 5
    .line 6
    iput-object p2, p0, Loq1;->b:Ld63;

    .line 7
    .line 8
    instance-of p0, p1, Ld34;

    .line 9
    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    check-cast p1, Ld34;

    .line 13
    .line 14
    iget p0, p1, Ld34;->a:I

    .line 15
    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    iget p0, p1, Ld34;->b:I

    .line 19
    .line 20
    if-eqz p0, :cond_2

    .line 21
    .line 22
    :cond_0
    return-void

    .line 23
    :cond_1
    instance-of p0, p1, Loo3;

    .line 24
    .line 25
    if-nez p0, :cond_2

    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    const-string p0, "Animation to be infinitely repeated cannot have a 0-duration"

    .line 29
    .line 30
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    throw p0
.end method


# virtual methods
.method public final a(Le34;)Lia4;
    .locals 2

    .line 1
    new-instance v0, Lx23;

    .line 2
    .line 3
    iget-object v1, p0, Loq1;->a:Ldy0;

    .line 4
    .line 5
    invoke-interface {v1, p1}, Ldy0;->a(Le34;)Lka4;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object p0, p0, Loq1;->b:Ld63;

    .line 10
    .line 11
    invoke-direct {v0, p1, p0}, Lx23;-><init>(Lka4;Ld63;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Loq1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Loq1;

    .line 6
    .line 7
    iget-object v0, p1, Loq1;->a:Ldy0;

    .line 8
    .line 9
    iget-object v1, p0, Loq1;->a:Ldy0;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object p1, p1, Loq1;->b:Ld63;

    .line 18
    .line 19
    iget-object p0, p0, Loq1;->b:Ld63;

    .line 20
    .line 21
    if-ne p1, p0, :cond_0

    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    return p0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    return p0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Loq1;->a:Ldy0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object p0, p0, Loq1;->b:Ld63;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    add-int/2addr p0, v0

    .line 16
    mul-int/lit8 p0, p0, 0x1f

    .line 17
    .line 18
    const-wide/16 v0, 0x0

    .line 19
    .line 20
    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    add-int/2addr v0, p0

    .line 25
    return v0
.end method
