.class public final Lwt;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic r:Lu/sage/a;


# direct methods
.method public constructor <init>(Lu/sage/a;Ldh0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwt;->r:Lu/sage/a;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1, p2}, Lbv3;-><init>(ILdh0;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ldh0;

    .line 2
    .line 3
    new-instance v0, Lwt;

    .line 4
    .line 5
    iget-object p0, p0, Lwt;->r:Lu/sage/a;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1}, Lwt;-><init>(Lu/sage/a;Ldh0;)V

    .line 8
    .line 9
    .line 10
    sget-object p0, Lt64;->a:Lt64;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Lwt;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lwt;->r:Lu/sage/a;

    .line 5
    .line 6
    iget-object p1, p0, Lu/sage/a;->t:Lir3;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0}, Lbv1;->j(Ljava/util/concurrent/CancellationException;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Lu/sage/a;->o()Lpt;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0}, Lpt;->s(Z)V

    .line 20
    .line 21
    .line 22
    const-string p1, "LogoutDetected"

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lu/sage/a;->x(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object p0, Lt64;->a:Lt64;

    .line 28
    .line 29
    return-object p0
.end method
