.class public final Llr2;
.super Lfl4;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final x:Ll33;


# direct methods
.method public constructor <init>(Ll33;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Llr2;->x:Ll33;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Llr2;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Llr2;

    .line 10
    .line 11
    iget-object p1, p1, Llr2;->x:Ll33;

    .line 12
    .line 13
    iget-object p0, p0, Llr2;->x:Ll33;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Ll33;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-nez p0, :cond_2

    .line 20
    .line 21
    :goto_0
    const/4 p0, 0x0

    .line 22
    return p0

    .line 23
    :cond_2
    :goto_1
    const/4 p0, 0x1

    .line 24
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Llr2;->x:Ll33;

    .line 2
    .line 3
    invoke-virtual {p0}, Ll33;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final o()Ll33;
    .locals 0

    .line 1
    iget-object p0, p0, Llr2;->x:Ll33;

    .line 2
    .line 3
    return-object p0
.end method
