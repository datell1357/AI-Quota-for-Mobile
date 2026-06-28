.class public final Lo05;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lh15;


# instance fields
.field public final a:Lxx4;

.field public final b:Lr25;


# direct methods
.method public constructor <init>(Lr25;Lly4;Lxx4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo05;->b:Lr25;

    .line 5
    .line 6
    iput-object p3, p0, Lo05;->a:Lxx4;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lsy4;Lsy4;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lo05;->b:Lr25;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p1, Lsy4;->zzc:Lp25;

    .line 7
    .line 8
    iget-object p1, p2, Lsy4;->zzc:Lp25;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lp25;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p0, 0x1

    .line 19
    return p0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lo05;->b:Lr25;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-object p0, p1

    .line 7
    check-cast p0, Lsy4;

    .line 8
    .line 9
    iget-object p0, p0, Lsy4;->zzc:Lp25;

    .line 10
    .line 11
    iget-boolean v0, p0, Lp25;->d:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lp25;->d:Z

    .line 17
    .line 18
    :cond_0
    invoke-static {p1}, Ldi0;->o(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    throw p0
.end method

.method public final c(Lsy4;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lo05;->b:Lr25;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p1, Lsy4;->zzc:Lp25;

    .line 7
    .line 8
    invoke-virtual {p0}, Lp25;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final d(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Ldi0;->o(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    throw p0
.end method

.method public final e(Ljava/lang/Object;[BIILh30;)V
    .locals 0

    .line 1
    move-object p0, p1

    .line 2
    check-cast p0, Lsy4;

    .line 3
    .line 4
    iget-object p2, p0, Lsy4;->zzc:Lp25;

    .line 5
    .line 6
    sget-object p3, Lp25;->e:Lp25;

    .line 7
    .line 8
    if-eq p2, p3, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {}, Lp25;->a()Lp25;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    iput-object p2, p0, Lsy4;->zzc:Lp25;

    .line 16
    .line 17
    :goto_0
    invoke-static {p1}, Ldi0;->o(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    throw p0
.end method

.method public final f(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lo05;->b:Lr25;

    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Ll15;->a(Lr25;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzd()Lsy4;
    .locals 1

    .line 1
    iget-object p0, p0, Lo05;->a:Lxx4;

    .line 2
    .line 3
    instance-of v0, p0, Lsy4;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p0, Lsy4;

    .line 8
    .line 9
    invoke-virtual {p0}, Lsy4;->b()Lsy4;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    check-cast p0, Lsy4;

    .line 15
    .line 16
    const/4 v0, 0x5

    .line 17
    invoke-virtual {p0, v0}, Lsy4;->h(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lt35;

    .line 22
    .line 23
    invoke-virtual {p0}, Lt35;->a()Lsy4;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method
