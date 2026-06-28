.class public final Lfp1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lnm1;


# instance fields
.field public final n:[Lrm1;

.field public final o:[Lwm1;


# direct methods
.method public constructor <init>(Ljava/util/LinkedList;Ljava/util/LinkedList;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    new-array v1, v1, [Lrm1;

    .line 12
    .line 13
    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, [Lrm1;

    .line 18
    .line 19
    iput-object p1, p0, Lfp1;->n:[Lrm1;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-array p1, v0, [Lrm1;

    .line 23
    .line 24
    iput-object p1, p0, Lfp1;->n:[Lrm1;

    .line 25
    .line 26
    :goto_0
    if-eqz p2, :cond_1

    .line 27
    .line 28
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    new-array p1, p1, [Lwm1;

    .line 33
    .line 34
    invoke-interface {p2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, [Lwm1;

    .line 39
    .line 40
    iput-object p1, p0, Lfp1;->o:[Lwm1;

    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    new-array p1, v0, [Lwm1;

    .line 44
    .line 45
    iput-object p1, p0, Lfp1;->o:[Lwm1;

    .line 46
    .line 47
    return-void
.end method

.method public constructor <init>([Lrm1;[Lwm1;)V
    .locals 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    array-length v0, p1

    .line 50
    new-array v1, v0, [Lrm1;

    iput-object v1, p0, Lfp1;->n:[Lrm1;

    const/4 v2, 0x0

    .line 51
    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p2, :cond_0

    .line 52
    array-length p1, p2

    .line 53
    new-array v0, p1, [Lwm1;

    iput-object v0, p0, Lfp1;->o:[Lwm1;

    .line 54
    invoke-static {p2, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 55
    :cond_0
    new-array p1, v2, [Lwm1;

    iput-object p1, p0, Lfp1;->o:[Lwm1;

    return-void
.end method


# virtual methods
.method public final a(Lom1;Lul1;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lfp1;->n:[Lrm1;

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    if-ge v1, v0, :cond_0

    .line 6
    .line 7
    aget-object v2, p0, v1

    .line 8
    .line 9
    invoke-interface {v2, p1, p2}, Lrm1;->a(Lom1;Lul1;)V

    .line 10
    .line 11
    .line 12
    add-int/lit8 v1, v1, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-void
.end method

.method public final b(Lvm1;Lul1;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lfp1;->o:[Lwm1;

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    if-ge v1, v0, :cond_0

    .line 6
    .line 7
    aget-object v2, p0, v1

    .line 8
    .line 9
    invoke-interface {v2, p1, p2}, Lwm1;->b(Lvm1;Lul1;)V

    .line 10
    .line 11
    .line 12
    add-int/lit8 v1, v1, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-void
.end method
