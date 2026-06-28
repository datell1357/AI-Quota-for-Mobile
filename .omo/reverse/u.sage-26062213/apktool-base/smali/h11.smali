.class public final Lh11;
.super Lxx1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic o:Z

.field public final synthetic p:Lne1;


# direct methods
.method public constructor <init>(ZLne1;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lh11;->o:Z

    .line 2
    .line 3
    iput-object p2, p0, Lh11;->p:Lne1;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lxx1;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lo83;

    .line 2
    .line 3
    iget-boolean v0, p0, Lh11;->o:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lh11;->p:Lne1;

    .line 8
    .line 9
    invoke-interface {p0}, Lne1;->a()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    iget-boolean v0, p1, Lo83;->x:Z

    .line 25
    .line 26
    if-eq v0, p0, :cond_1

    .line 27
    .line 28
    iget v0, p1, Lo83;->n:I

    .line 29
    .line 30
    or-int/lit16 v0, v0, 0x4000

    .line 31
    .line 32
    iput v0, p1, Lo83;->n:I

    .line 33
    .line 34
    iput-boolean p0, p1, Lo83;->x:Z

    .line 35
    .line 36
    :cond_1
    sget-object p0, Lt64;->a:Lt64;

    .line 37
    .line 38
    return-object p0
.end method
