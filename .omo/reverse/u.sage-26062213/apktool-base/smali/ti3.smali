.class public final Lti3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Log1;


# instance fields
.field public final n:Landroid/app/Service;

.field public o:Ltl0;


# direct methods
.method public constructor <init>(Landroid/app/Service;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lti3;->n:Landroid/app/Service;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lti3;->o:Ltl0;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lti3;->n:Landroid/app/Service;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v1, v0, Log1;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const-class v1, Lsi3;

    .line 20
    .line 21
    invoke-static {v0, v1}, Lbi4;->u(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lsi3;

    .line 26
    .line 27
    check-cast v0, Lvl0;

    .line 28
    .line 29
    iget-object v0, v0, Lvl0;->b:Lvl0;

    .line 30
    .line 31
    new-instance v1, Ltl0;

    .line 32
    .line 33
    invoke-direct {v1, v0}, Ltl0;-><init>(Lvl0;)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lti3;->o:Ltl0;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const-string p0, "Hilt service must be attached to an @HiltAndroidApp Application. Found: "

    .line 40
    .line 41
    invoke-static {v2, p0}, Lq73;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 p0, 0x0

    .line 45
    return-object p0

    .line 46
    :cond_1
    :goto_0
    iget-object p0, p0, Lti3;->o:Ltl0;

    .line 47
    .line 48
    return-object p0
.end method
