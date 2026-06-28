.class final Luk2;
.super Lrd2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd2;"
    }
.end annotation


# instance fields
.field public final b:Ltk2;


# direct methods
.method public constructor <init>(Ltk2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Luk2;->b:Ltk2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final e()Lmd2;
    .locals 2

    .line 1
    new-instance v0, Lxk2;

    .line 2
    .line 3
    sget-object v1, Lcd;->a:Lbx3;

    .line 4
    .line 5
    iget-object p0, p0, Luk2;->b:Ltk2;

    .line 6
    .line 7
    invoke-direct {v0, v1, p0}, Lxk2;-><init>(Lqk2;Ltk2;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Luk2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Luk2;

    .line 8
    .line 9
    iget-object p1, p1, Luk2;->b:Ltk2;

    .line 10
    .line 11
    iget-object p0, p0, Luk2;->b:Ltk2;

    .line 12
    .line 13
    if-eq p1, p0, :cond_1

    .line 14
    .line 15
    return v1

    .line 16
    :cond_1
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method public final f(Lmd2;)V
    .locals 3

    .line 1
    check-cast p1, Lxk2;

    .line 2
    .line 3
    sget-object v0, Lcd;->a:Lbx3;

    .line 4
    .line 5
    iput-object v0, p1, Lxk2;->B:Lqk2;

    .line 6
    .line 7
    iget-object v0, p1, Lxk2;->C:Ltk2;

    .line 8
    .line 9
    iget-object v1, v0, Ltk2;->a:Lxk2;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-ne v1, p1, :cond_0

    .line 13
    .line 14
    iput-object v2, v0, Ltk2;->a:Lxk2;

    .line 15
    .line 16
    :cond_0
    iget-object p0, p0, Luk2;->b:Ltk2;

    .line 17
    .line 18
    if-eq p0, v0, :cond_1

    .line 19
    .line 20
    iput-object p0, p1, Lxk2;->C:Ltk2;

    .line 21
    .line 22
    :cond_1
    iget-boolean p0, p1, Lmd2;->A:Z

    .line 23
    .line 24
    if-eqz p0, :cond_2

    .line 25
    .line 26
    iget-object p0, p1, Lxk2;->C:Ltk2;

    .line 27
    .line 28
    iput-object p1, p0, Ltk2;->a:Lxk2;

    .line 29
    .line 30
    iput-object v2, p0, Ltk2;->b:Lxk2;

    .line 31
    .line 32
    iput-object v2, p1, Lxk2;->D:Lxk2;

    .line 33
    .line 34
    new-instance v0, Lje;

    .line 35
    .line 36
    const/16 v1, 0xa

    .line 37
    .line 38
    invoke-direct {v0, v1, p1}, Lje;-><init>(ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Ltk2;->c:Lne1;

    .line 42
    .line 43
    invoke-virtual {p1}, Lmd2;->u0()Lqi0;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Ltk2;->d:Lqi0;

    .line 48
    .line 49
    :cond_2
    return-void
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    sget-object v0, Lcd;->a:Lbx3;

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
    iget-object p0, p0, Luk2;->b:Ltk2;

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
    return p0
.end method
