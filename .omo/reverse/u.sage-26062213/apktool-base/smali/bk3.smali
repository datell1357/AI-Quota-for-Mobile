.class public final synthetic Lbk3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic n:Lga0;

.field public final synthetic o:Lgk0;

.field public final synthetic p:Ls21;

.field public final synthetic q:Z


# direct methods
.method public synthetic constructor <init>(Lga0;Lgk0;Ls21;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lbk3;->n:Lga0;

    .line 5
    .line 6
    iput-object p2, p0, Lbk3;->o:Lgk0;

    .line 7
    .line 8
    iput-object p3, p0, Lbk3;->p:Ls21;

    .line 9
    .line 10
    iput-boolean p4, p0, Lbk3;->q:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    const-string v0, "FirebaseCrashlytics"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const-string v1, "disk worker: log non-fatal event to persistence"

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lbk3;->n:Lga0;

    .line 17
    .line 18
    iget-object v0, v0, Lga0;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lok0;

    .line 21
    .line 22
    iget-object v1, p0, Lbk3;->p:Ls21;

    .line 23
    .line 24
    iget-object v1, v1, Ls21;->a:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v2, p0, Lbk3;->o:Lgk0;

    .line 27
    .line 28
    iget-boolean p0, p0, Lbk3;->q:Z

    .line 29
    .line 30
    invoke-virtual {v0, v2, v1, p0}, Lok0;->d(Lgk0;Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
