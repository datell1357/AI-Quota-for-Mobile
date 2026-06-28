.class public final Llc3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lic3;
.implements Lyc3;


# instance fields
.field public final synthetic n:Ljc3;

.field public o:Lr22;

.field public p:Lwc3;


# direct methods
.method public constructor <init>(Ljc3;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Llc3;->n:Ljc3;

    .line 5
    .line 6
    const-string v0, "androidx.savedstate.SavedStateRegistry"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljc3;->d(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    instance-of v2, v1, Landroid/os/Bundle;

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    check-cast v1, Landroid/os/Bundle;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :goto_0
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-object v2, p0, Llc3;->p:Lwc3;

    .line 23
    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    new-instance v2, Lxc3;

    .line 27
    .line 28
    new-instance v3, Lvc3;

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    invoke-direct {v3, v4, p0}, Lvc3;-><init>(ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {v2, p0, v3}, Lxc3;-><init>(Lyc3;Lvc3;)V

    .line 35
    .line 36
    .line 37
    new-instance v3, Lwc3;

    .line 38
    .line 39
    invoke-direct {v3, v2}, Lwc3;-><init>(Lxc3;)V

    .line 40
    .line 41
    .line 42
    iput-object v3, p0, Llc3;->p:Lwc3;

    .line 43
    .line 44
    invoke-virtual {v3, v1}, Lwc3;->b(Landroid/os/Bundle;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    new-instance v1, Lcc;

    .line 48
    .line 49
    const/16 v2, 0x1c

    .line 50
    .line 51
    invoke-direct {v1, v2, p0}, Lcc;-><init>(ILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0, v1}, Ljc3;->a(Ljava/lang/String;Lne1;)Lhc3;

    .line 55
    .line 56
    .line 57
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lne1;)Lhc3;
    .locals 0

    .line 1
    iget-object p0, p0, Llc3;->n:Ljc3;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Ljc3;->a(Ljava/lang/String;Lne1;)Lhc3;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Llc3;->n:Ljc3;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljc3;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final c()Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Llc3;->n:Ljc3;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljc3;->c()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Llc3;->n:Ljc3;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljc3;->d(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getLifecycle()Lh22;
    .locals 2

    .line 1
    iget-object v0, p0, Llc3;->o:Lr22;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lr22;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p0, v1}, Lr22;-><init>(Lp22;Z)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Llc3;->o:Lr22;

    .line 12
    .line 13
    :cond_0
    return-object v0
.end method

.method public final getSavedStateRegistry()Luc3;
    .locals 3

    .line 1
    iget-object v0, p0, Llc3;->p:Lwc3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lxc3;

    .line 6
    .line 7
    new-instance v1, Lvc3;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, v2, p0}, Lvc3;-><init>(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p0, v1}, Lxc3;-><init>(Lyc3;Lvc3;)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Lwc3;

    .line 17
    .line 18
    invoke-direct {v1, v0}, Lwc3;-><init>(Lxc3;)V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Llc3;->p:Lwc3;

    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    invoke-virtual {v1, p0}, Lwc3;->b(Landroid/os/Bundle;)V

    .line 25
    .line 26
    .line 27
    move-object v0, v1

    .line 28
    :cond_0
    iget-object p0, v0, Lwc3;->b:Luc3;

    .line 29
    .line 30
    return-object p0
.end method
