.class public final synthetic Lgj0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic n:Lij0;

.field public final synthetic o:J

.field public final synthetic p:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lij0;JLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lgj0;->n:Lij0;

    .line 5
    .line 6
    iput-wide p2, p0, Lgj0;->o:J

    .line 7
    .line 8
    iput-object p4, p0, Lgj0;->p:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lgj0;->n:Lij0;

    .line 2
    .line 3
    iget-object v0, v0, Lij0;->g:Ldj0;

    .line 4
    .line 5
    iget-object v1, v0, Ldj0;->n:Lpk0;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v1, v1, Lpk0;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v0, v0, Ldj0;->i:Lgw4;

    .line 19
    .line 20
    iget-object v0, v0, Lgw4;->p:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Lh51;

    .line 23
    .line 24
    iget-wide v1, p0, Lgj0;->o:J

    .line 25
    .line 26
    iget-object p0, p0, Lgj0;->p:Ljava/lang/String;

    .line 27
    .line 28
    invoke-interface {v0, v1, v2, p0}, Lh51;->o(JLjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
